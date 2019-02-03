#!/usr/bin/env bash
yum update -y
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum install yum-utils -y
yum install -y ncurses-devel make gcc bc bison flex elfutils-libelf-devel openssl-devel grub2
cd /usr/src/
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.20.5.tar.xz
tar -xvf linux-4.20.5.tar.xz
yum install -y bash-completion tree vim mc elinks wget unzip zip expect ncdu
#SELinux to permissive
setenforce 0

 echo "-------------------END SCRIPT------------------------------"