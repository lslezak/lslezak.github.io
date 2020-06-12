## Testing AutoYaST Profiles

### Warning

:warning: This is site a proof of concept, the file names and URL paths
can be still changed!! :warning:

### Minimal Profiles

The minimal profiles configure only the required options, the system defaults
are used for everything else.

#### Minimal openSUSE Leap 15

File: [minimal_leap15.xml]({{ "/" | absolute_url }}minimal_leap15.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}minimal_leap15.xml`

- Displays the installation summary, needs to be manually confirmed
- Set `linux` password for the `root` user

#### Minimal SLES 15

File: [minimal_sles15.xml]({{ "/" | absolute_url }}minimal_sles15.xml)  
Boot option: `autoyast={{ "/" | absolute_url }}minimal_sles15.xml`

- Minimalistic configuration for Full installation medium
- Displays the installation summary, needs to be manually confirmed
- Set `linux` password for the `root` user
- Adds the Basesystem module repository
- Selects SLES as the base product
