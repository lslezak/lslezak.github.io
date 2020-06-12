## Testing AutoYaST Profiles

### Warning

:warning: This is site a proof of concept, the file names and URL paths
can be still changed!! :warning:

### Minimal Profiles

The minimal profiles configure only the required options, the system defaults
are used for everything else.

#### Minimal openSUSE Leap 15

File: [mini_leap15.xml]({{ "/" | absolute_url }}mini_leap15.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}mini_leap15.xml`

- Set `linux` password for the `root` user

File: [mini_leap15_confirm.xml]({{ "/" | absolute_url }}mini_leap15_confirm.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}mini_leap15_confirm.xml`

- Same as [mini_leap15.xml]({{ "/" | absolute_url }}mini_leap15.xml)
- Additionally displays the installation summary, needs to be manually confirmed

#### Minimal SLES 15

File: [mini_sles15.xml]({{ "/" | absolute_url }}mini_sles15.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}mini_sles15.xml`

- Minimalistic configuration for Full installation medium
- Set `linux` password for the `root` user
- Adds the Basesystem module repository
- Selects SLES as the base product

File: [mini_sles15_confirm.xml]({{ "/" | absolute_url }}mini_sles15_confirm.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}mini_sles15_confirm.xml`

- Same as [mini_sles15.xml]({{ "/" | absolute_url }}mini_sles15.xml)
- Additionally displays the installation summary, needs to be manually confirmed
