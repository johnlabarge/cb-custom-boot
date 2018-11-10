#! /bin/bash
# Install agent requirements
sudo su -
yum update -y
yum install git unzip wget qemu-kvm -y
         echo "export PATH=$PATH:/usr/libexec" > /etc/profile.d/libexec-path.sh
source /etc/profile.d/libexec-path.sh
curl -LO \
https://releases.hashicorp.com/packer/1.3.0/packer_1.3.0_linux_amd64.zip
unzip packer_1.3.0_linux_amd64.zip
cp packer /usr/bin/packerio