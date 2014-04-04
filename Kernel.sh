#!/bin/sh

# Script traducido por alfierimorillo

echo "--------------------------------------------------------------"
echo "--- Script edittado por http://ubuntued.info staff --- y traducido por alfierimorillo"
echo "$(tput setaf 3)--- Kernel 3.10.5 will be installed in an `uname -i` system     ---$(tput sgr0)"
echo "--------------------------------------------------------------"

echo ""

sleep 2

read -p "Presione Enter para continuar, o aborte la instalacion  CTRL+C" nothing

echo ""
echo ""

#i386 links

link1="http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.10.5-saucy/linux-headers-3.10.5-031005_3.10.5-031005.201308040618_all.deb"

link2="http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.10.5-saucy/linux-headers-3.10.5-031005-generic_3.10.5-031005.201308040618_i386.deb"

link3="http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.10.5-saucy/linux-image-3.10.5-031005-generic_3.10.5-031005.201308040618_i386.deb"

#amd64 links

url1="http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.10.5-saucy/linux-headers-3.10.5-031005-generic_3.10.5-031005.201308040618_amd64.deb"

url2="http://kernel.ubuntu.com/~kernel-ppa/mainline/v3.10.5-saucy/linux-image-3.10.5-031005-generic_3.10.5-031005.201308040618_amd64.deb"


#Architectura de su sistema

arch=`uname -m`
if  [ $arch = i686 ] || [ $arch = i386 ]; then

mkdir -p $HOME/kernel-i386 

cd $HOME/kernel-i386

wget -c $link1
wget -c $link2
wget -c $link3

sudo dpkg -i *.deb  

sudo rm -rf $HOME/kernel-i386

elif [ $arch = "x86_64" ]; then

mkdir -p $HOME/kernel-amd64

cd $HOME/kernel-amd64

wget -c $link1
wget -c $url1
wget -c $url2

sudo dpkg -i *.deb  

sudo rm -rf $HOME/kernel-amd64

     else
        echo "No soporta su arquitectura"
fi
