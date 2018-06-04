#xfce4-amdesktop changelog
r19 June-01-2018
- resync with upstream repos
- restore kernel-headers rpm to default upstream no custom elrepo version
- enable zfs, zfsonlinux and repo, using kABI-kmod
- enable hw cert repos in install
	- add lmbench, stress, dt
- enable rpmfusion repos in install
- added mythplugins: mytharchive,mythgallery,mythmusic,mythzoneminder
	- associated yum fix, added exclusion to upstream repo config so that our *myth* versions are installed instead.
		- used a quick fix for now in the cleanup section of live config, which only works after installed and after first boot.
			- sed -i '7a\exclude=*myth*' /etc/yum.repos.d/rpmfusion-free-updates.repo
- added negativo17 steam release from negativo17.org/steam
	- added negativo17-steam-release repo rpm
	- new steam steam rpm/added startup workaround for libxcb builtin
- add ostree
- add avidemux-qt
- add gnucash
- added kdenlive
	- breeze-icon-theme
- add phpmyadmin
- add stellarium
- add nux rpms hb/frozen-bubble and deps


r18 May-29-2018
- resync with upstream repos
- increase liveimg size in liveconfig
- simplify/easier image creation/remove large tmpdir req
- add freerdp
- add tuxpaint
 	- add new rpm tuxpaint-stamps
- add tuxguitar new rpm
- add tuxtype2 new rpm
- add librecad
- add new rpm qstat-1.15
- add new rpm xqf-1.0.6.2 rebuilt against qstat-2.15 "/usr/bin/quakestat"
- add games; extreme-tuxracer, supertuxkart, tremulous, chromium-bsu, gnuchess, warzone2100, tuxmath, tuxpuck
	- add new rpm dep, SFML for etr
	- add new rpm dep, libglpng for c-bsu
	- add new rpm deps, wiiuse, angelscript for stk
- add ntfsprogs,ntfs-3g

r17 May-11-2018
- resync with all upstream repos/upgrade to 7.5 
	- rebase repo configuration in liveconfig
- rebuilt mythtv #24/qt5 upgraded upstream to 5.9.2
	- qt5-qtwebkit* used from epel-testing/until epel repo transition for qt5.9.X is completed
		- removed gthumb (needs rebuild, has old dep)
- changed rpm spec repo layout from localhost to external, prep for autobuilds
- created/added new rpms gramps (genealogy) and deps, osm-gps-map pyicu python3-pyicu pyexiv2
- created/added new rpm mythtv-streamzap-conf, sets up a new mapping/udev rule to act upon it, credits in rpm changelog
- added quake3,openarena games from upstream repos
- added hexchat,pidgin
- htop
- added rpm gnome-backgrounds with default black/default.png 


r16 May-01-2018
- fixed efi install
- added pavucontrol
- added alsa-plugins-pulseaudio
- resync with sl repo
	-sl kernel updated to 3.10.0-862 
- added filezilla
- added gnome-boxes
- added sl-extras as repo option
- added softwarecollections as repo option
- added eclipse-cdt
- added eclipse-rpm-editor
- added buildah
- added docker
- added skopeo
- added hostapd
- added firewall-config
- added xfce4-amdesktop-firewalld-cmds rpm
	- adds default firewalld rules to allow hdhr-config for hdhomerun
		- other rules can be added through same service, service runs two scripts
			- install-xfce4-amdesktop-firewalld-cmds.sh and remove-xfce4-amdesktop-firewalld-cmds.sh
				-modify scripts as needed for other services, *keep them in sync or rebuild a rpm
*note:blueberry-obex-agent.py triggers abrt events,
will address soon silence them manually with abrt for now.


r15 Apr-29-2018
- resync with all upstream repos 
- scientific updated to kernel-3.10.0-693.21.1
        -kernel-lt-4.4.126-1.AM.rebuild1 is still available for testing
- chromium updated to 65.0.3325.181
- enable internet mirrors in live config repos,for transition to autobuilding
- update mythtv to latest git version fixes/0.28(v0.28.2-1-g2d49bc1)
- replaced xfce-bluetooth with blueberry 
- fix ondisk source file references
- rebuild with standard livecd-tools/not server version
- replaced NetworkManager-strongswan with strongswan-charon-nm
- updated xfce4-panel and rebuilt am decendant rpm, xfce4-panel upstream bug ref #1388439

r14 Apr-03-2018
- Started conversion/rename to xfce4-amdesktop
- Sync with upstream sl repo:
- added lirc-* to build
- added a patched/rebuilt "kernel-lt-4.4.126-1.AM.rebuild1" elrepo based kernel with lirc_zilog kmod from staging.


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
