#!/usr/bin/env ruby

# the GitHub organization
GH_ORG = "yast".freeze
BRANCH_NAME = "packager-ng".freeze

# install missing gems
if !File.exist?("./.vendor")
  puts "Installing the needed Rubygems to ./.vendor/bundle ..."
  system "bundle install --path .vendor/bundle"
end

require "rubygems"
require "bundler/setup"

require "octokit"


# create the octokit client
def create_client
  # use ~/.netrc ?
  netrc = File.join(Dir.home, ".netrc")
  client_options = if ENV["GH_TOKEN"]
    # Generate at https://github.com/settings/tokens
    { access_token: ENV["GH_TOKEN"] }
  elsif File.exist?(netrc) && File.read(netrc).match(/^machine api.github.com/)
    # see https://github.com/octokit/octokit.rb#authentication
    { netrc: true }
  else
    $stderr.puts "Error: The Github access token is not set."
    $stderr.puts "Pass it via the 'GH_TOKEN' environment variable"
    $stderr.puts "or write it to the ~/.netrc file."
    $stderr.puts "See https://github.com/octokit/octokit.rb#using-a-netrc-file"
    exit 1
  end

  client = Octokit::Client.new(client_options)
  client.auto_paginate = true

  client
end

github = create_client

$stderr.puts "Reading #{GH_ORG.inspect} repositories at GitHub..."
git_repos = github.list_repositories(GH_ORG)
$stderr.puts "Found #{git_repos.size} Git repositories\n\n"

# puts git_repos.first.inspect

updated_repos = git_repos.each_with_object([]) do |repo, arr|
  if !repo.name.include?("skelcd") &&
    github.branches(repo.full_name).map(&:name).include?(BRANCH_NAME)

    arr << repo.name
  end
end

puts <<~HEADER
  set +x
HEADER

updated_repos.each do |u|
  puts "yupdate patch #{u} packager-ng"
end

# extra patch for SLE
puts <<~FOOTER
  grep -q Enterprise /etc/os-release && yupdate patch skelcd-control-leanos packager-ng
FOOTER

