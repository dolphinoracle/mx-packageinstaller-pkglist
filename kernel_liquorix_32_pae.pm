<?xml version="1.0"?>
<app>

<category>
Kernels
</category>

<name>  
Liquorix Kernel 32 bit pae
</name>

<description>  
Liquorix Kernel (PAE, latest 4.x from MX TEST repo)
</description>

<installable>
32
</installable>

<screenshot>none</screenshot>

<preinstall>
echo "deb http://mxrepo.com/mx/testrepo/ stretch test">/etc/apt/sources.list.d/mxtestrepotemp.list
x-terminal-emulator -e apt-get update
</preinstall>

<install_package_names>
linux-image-liquorix-686-pae
linux-headers-liquorix-686-pae
broadcom-sta-dkms
ndiswrapper-dkms
</install_package_names>


<postinstall>
rm -f /etc/apt/sources.list.d/mxtestrepotemp.list
apt-get -y remove linux-image-liquorix-686-pae linux-headers-liquorix-686-pae
x-terminal-emulator -e apt-get update
</postinstall>


<uninstall_package_names>

</uninstall_package_names>
</app>
