# automythdesktop
Xfce4 Desktop OS LiveImage/Installer with Mythtv Frontend 0.28.1 / OpenVPN Client

*This frontend client was intented to be used with a Automythserver running OpenVPN, but it will work fine as a traditional
mythfrontend client as well.






Welcome to Automyth Desktop Mythfrontend VPN client example!
Build Codenamed:  "XMasGift2Too"
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

#pre-configured accounts

	Password for root is NOT SET
	*mythtv has full sudo power for root
	Password for the live user(mythtv)=mythtv
	*sshd disabled by default and blocked from mythtv user, 
	to change; reset mythtv password with terminal:

		passwd mythtv

	then remove entry "DenyUsers mythtv" from /etc/ssh/sshd_config


*Note using this frontend image with automythserver requires a configured VPN server. 
Configure (generate keys/certs as needed) your automythserver vpn prior to attempting to connect.
The next release is slated to have static example certs installed between server and this client.

