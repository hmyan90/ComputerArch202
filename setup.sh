#!/bin/bash


#docker image pull hmyan19901001/cython

# kernel version
kernel_version=`uname -r`
echo "The kernel version of this computer is: ${kernel_version}"

rm hyan90_proj -fr
mkdir hyan90_proj
cd hyan90_proj
git clone https://github.com/hmyan90/ComputerArch202.git
cd ComputerArch202
sed -i "s/KERNEL_VERSION/${kernel_version}/g" Dockerfile
docker build -t hyan90 .

