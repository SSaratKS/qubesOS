#!/bin/bash
#
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
#
sudo docker run hello-world
#
sudo rpm -ivh /home/user/Downloads/zip/jre-8u231-linux-x64.rpm
#
yum
sudo yum -y install libXScrnSaver
#
which flutter
which android
which chrome
which code
which docker
which java
