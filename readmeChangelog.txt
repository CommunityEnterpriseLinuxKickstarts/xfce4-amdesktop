#automythdesktop changelog

r13 Jan-18-2018
- Sync with upstream sl repo:
	- Red Hat Security Advisory updates for microcode,firmware,java
	- Advisory URLs: 
	- https://access.redhat.com/errata/RHSA-2018:0093
	- https://access.redhat.com/errata/RHSA-2018:0094
	- https://access.redhat.com/errata/RHSA-2018:0095



r12 Jan-08-2018
-- Sync with upstream repos to update kernel/kernel-lt for vulnerabilities: Meltdown & Spectre
- kernel-lt-4.4.110-1
- kernel-3.10.0-693.11.6
- Added all (repo available) networkmanager/vpn plugins


r11 Dec-30-2017
- updated createNew*image.sh ISO script to use /tmp/TMPDIR for livecd-creator --tmpdir
- added cleanup options to ISO  script
- started consolidation/migration of live config options -->rpm(s)
	- xfce4-panel, changed from using skel method to using a simplier system wide configuration in etc/xdg, duh!: 
		Added a new xfce4-panel rpm that presets the default panel, All newly created users should get the 
		default panel now.
	- Simplified conky/updateConkyrc configuration and moved most to automythconkydesktop rpm 

- fix missing source link, in liveconfig.
- set perms on .Xdefaults for mythtv in liveconfig


r10 
- stopgap fix: update liveconfig @ mythtv account for installs/(set login term/homedir in passwd)

- Add mythtv-backend,mythtv-setup to rpms so users can setup and use mythbackend Server with Desktop image, if desired. 
	*Note, using this option will require manual mythtv-setup and dependencies and does not include the automyth shell installer scripts.

- update livecd-creator script name (-1 char)

- added livecd-tools package to assist advanced/power users in rebuilding

- set default xfce4 panel in (/etc/skel for all users) when installed.
	adding options to the post@reboot cron job, long term add to a rpm.
	#mkdir -pv /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/
	#cp -av /etc/xdg/xfce4/panel/default.xml /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml 

- rebuilt with host using kernel-lt to assist in building a HFSPLUS EFI image


- added default.png to temp set xfce4 desktop background to black

r9
- first public release
