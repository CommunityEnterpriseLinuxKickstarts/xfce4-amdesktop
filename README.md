This project uses fedora livecd-creator which you may find more info about from link below and elsewhere. https://fedoraproject.org/wiki/How_to_create_and_use_a_Live_CD

and

http://www.livecd.ethz.ch/build.html is a awesome 'NON-SIG authorized' resource.

also, more awesome livecd image work from another person listed below. I have reused some of their work as in this project as well. Here's an example: https://img.cs.montana.edu/linux/montanalinux/

*Side note: don't go punishing them if you hate me for whatever reason(s) you may or may NOT have, I did not get their permission nor are they my friends, I'm just insprired from their great work, PERIOD. *Last note: If you follow me around trying to nixay everything I do as bad and punish those that so called "enable me", YOUR GOING TO BE VERY BUSY, SO SADDLE UP COWBOY! Take that to the ...

If you were looking for the shell scripting behind the liveimage project and not the whole project, check here: https://github.com/kelsieflynn/automythsvr-eit-stages

Below is the readme from (SF, where you can download the ISOs, for now) *Note: Any references to "we" in my work are wishful future thinking at this time, I did not plan to release this under my name at first. Then I changed my mind after much thought.

***

Welcome to Automyth Desktop Mythfrontend VPN client example!

Build Codenamed:  "XMasGift2Too"

Xfce4 Desktop OS LiveImage/Installer with Mythtv Frontend 0.28.1 / OpenVPN Client

*This frontend client was intended to be used with a Automythserver running OpenVPN, but it will work fine as a traditional mythfrontend client as well.






Requirements:

	Automythserver or mythtv-0.28 server,
	x86_64 Compatible Computer:
	Wired/Wireless Capable
	Minimum 1G Ram recommended
	

Software Environment:

	Enterprise Linux 7.4
	Configured with software from repos:
	epel, elrepo, rpmfusion and automyth_repo
	mythtv-frontend-0.28.1 g36fe0ce  *reworked from rpmfusion version

	mythplugins: 
	mytharchive,mythmusic,mythgallery,mythzoneminder
	OpenVPN
	Xfce4
	Chromium v61.0.3163.100 
	Firefox 52.5.1 
	Libreoffice 5.0.6.2
	Evolution 3.22.6
	kvm & virt-manager
	and other programs I've found useful for Desktop.

Pre-configured accounts:

	Password for root is NOT SET
	*mythtv has full sudo power for root
	Password for the live user(mythtv)=mythtv
	*sshd disabled by default and blocked from mythtv user, 
	to change;
	***DO NOT SKIP THIS STEP OR YOUR BOX WILL BE INSECURE!***
	Change the shell account mythtv password with a terminal:

		passwd mythtv

        *Enter you new password and confirm.

	***DO NOT PROCEED UNLESS YOU HAVE CHANGED THE MYTHTV SHELL ACCOUNT PASSWORD FIRST!****
	
	then remove entry "DenyUsers mythtv" from /etc/ssh/sshd_config
	and run:
			systemctl daemon-reload
			systemctl enable sshd
			systemctl start sshd

*Note using this frontend image with automythserver typically requires a configured VPN server. 
Configure (generate keys/certs as needed) your automythserver vpn prior to attempting to connect.
The next release is slated to have static example certs installed between server and this client.

