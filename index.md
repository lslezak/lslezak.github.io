## Testing AutoYaST Profiles

### Notes

:warning: This still WIP, the locations and the paths can still change!!

### Minimal Profiles

#### Minimal openSUSE Leap 15

[minimal_leap15.xml]({{ "/" | absolute_url }}/minimal_leap15.xml)

Boot option: `autoyast={{ "/" | absolute_url }}/minimal_leap15.xml`

- Minimalistic configuration
- Displays the installation summary, needs to be manually confirmed
- Set `linux` password for the `root` user
- Use defaults for everything else

{{ "/" | absolute_url }}/minimal_leap15.xml

#### Minimal SLES 15

[minimal_sles15.xml]({{ "/" | absolute_url }}/minimal_sles15.xml)

Boot option: `autoyast={{ "/" | absolute_url }}/minimal_sles15.xml`

- Minimalistic configuration for Full installation medium
- Displays the installation summary, needs to be manually confirmed
- Set `linux` password for the `root` user
- Adds the SLES base product and the Basesystem module
- Selects SLES as the base product
- Use defaults for everything else
