Welcome to Automyth Desktop Mythfrontend VPN client example!
Build Codenamed:  "XMasGift2Too"

Requirements:

	x86_64 Compatible Computer:
	Wired/Wireless Capable
	1G Ram recommended for installation.



Software Environment:
Enterprise Linux 7.4
Configured with software from repos:
epel, elrepo, rpmfusion and automyth_repo


mythtv-frontend-0.28.1 g36fe0ce  *reworked from rpmfusion version
mythplugins: mytharchive,mythmusic,mythgallery,mythzoneminder
OpenVPN
Xfce4
Chromium v61.0.3163.100 
Firefox 52.5.1 
Libreoffice 5.0.6.2
Evolution 3.22.6
kvm & virt-manager
and other programs I've found useful for Desktop.


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


*Note using this frontend image with automythserver requires a configured VPN server. 
Configure (generate keys/certs as needed) your automythserver vpn prior to attempting to connect.
The next release is slated to have static example certs installed between server and this client.
