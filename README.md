Welcome to Xfce4-AMDesktop
aka automyth-desktop

Build Codenamed:  "XMasGift2Too"

Requirements:

	x86_64 Compatible Computer:
	Wired/Wireless Capable
	1G Ram recommended for installation.



Software Environment:
Enterprise Linux 7.5
Configured with software from repos:
epel, elrepo, rpmfusion and custom rpms from automyth_repo


mythtv-frontend-0.28.2 g2d49bc1  from git fixes/0.28 *original spec reworked from previous 0.28.X rpmfusion version
mythplugins: mytharchive,mythmusic,mythgallery,mythzoneminder
OpenVPN
Xfce4
Chromium 
Firefox 
Libreoffice 
Evolution 
kvm & virt-manager
and other programs.


*If you plan on using libvirt/kvm host virtualization remember to mount a seperate /var during install on a seperate drive for best performance if you intend to use file based kvm/qemu clients.
Else just use lvm with a separate partition for var or libvirt/images dir.

#pre-configured accounts
Password for root is NOT SET
*mythtv has full sudo power for root
Password for the live user(mythtv)=mythtv

*sshd disabled by default and blocked from mythtv user, 
to change; reset mythtv password with terminal:

passwd mythtv

then remove entry "DenyUsers mythtv" from /etc/ssh/sshd_config


*Note using this frontend image with automythserver aka amsvr-hdhr* requires a configured VPN server or "network enabled" mythtv server. 
Configure (generate keys/certs as needed) your automythserver vpn prior to attempting to connect to a amsvr-hdhr or reconfigure amsvr mythtv-setup to network mode manually.
A future release may have static example certs installed between server and this client, but not at this time.
