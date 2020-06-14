## AutoYaST Rules

The AutoYaST rules allow configuring the system according to several
system attributes.

See more details in the [AutoYaST rules documentation](
https://documentation.suse.com/sles/15-SP1/html/SLES-all/rulesandclass.html#rules).

### X Window or Minimal System

OS: openSUSE Leap 15
Files: [rules/rules.xml]({{ "/" | absolute_url }}rules1/rules/rules.xml),
  [mini_leap15.xml]({{ "/" | absolute_url }}rules1/mini_leap15.xml),
  [x11.xml]({{ "/" | absolute_url }}rules1/x11.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}rules1/`  
Note: :warning: The trailing slash ("/") is important! :warning:

- Depending on the disk size it either installs the X Window System (>1GB)
  or a minimal system with text mode (&lt;1GB).