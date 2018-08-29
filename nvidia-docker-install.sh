#!/bin/sh

# This script must be run in transactional-update shell

mkdir /tmp/nvidia-docker
cd /tmp/nvidia-docker
wget https://github.com/danielorf/libnvidia-container/releases/download/v1.0.0-openSUSE423/libnvidia-container-openSUSE423.tar.gz
wget https://github.com/danielorf/nvidia-container-runtime/releases/download/v1.4.0-openSUSE423/nvidia-container-runtime-openSUSE423.tar.gz
wget https://github.com/danielorf/nvidia-docker/releases/download/v2.0.3-openSUSE423/nvidia-docker-openSUSE423.tar.gz
tar -xvf libnvidia-container-openSUSE423.tar.gz
echo "Installing libnvidia-container-openSUSE423 RPMs"
zypper in *.rpm
rm *.rpm
tar -xvf nvidia-container-runtime-openSUSE423.tar.gz
echo "Installing nvidia-container-runtime-openSUSE423 RPMs"
zypper in *.rpm
rm *.rpm
tar -xvf nvidia-docker-openSUSE423.tar.gz
echo "Installing nvidia-docker-openSUSE423 RPMs"
zypper in *.rpm
rm *.rpm
cd ..
rm -rf /tmp/nvidia-docker
echo "Finished installing nvidia-docker RPMs"