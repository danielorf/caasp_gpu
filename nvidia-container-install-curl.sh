#!/bin/sh

# This script must be run in transactional-update shell

mkdir /tmp/nvidia-container-files
cd /tmp/nvidia-container-files
curl -kLO https://github.com/danielorf/libnvidia-container/releases/download/v1.0.0-openSUSE423/libnvidia-container-openSUSE423.tar.gz
curl -kLO https://github.com/danielorf/nvidia-container-runtime/releases/download/v1.4.0-openSUSE423/nvidia-container-runtime-openSUSE423.tar.gz
tar -xvf libnvidia-container-openSUSE423.tar.gz
echo "Installing libnvidia-container-openSUSE423 RPMs"
zypper in *.rpm
rm *.rpm
tar -xvf nvidia-container-runtime-openSUSE423.tar.gz
echo "Installing nvidia-container-runtime-openSUSE423 RPMs"
zypper in *.rpm
rm *.rpm
cd ..
rm -rf /tmp/nvidia-container-files
echo "Finished installing nvidia-container-files RPMs"