#!/usr/bin/bash
if [ $(id -u) -eq 0 ]
then
	echo "your are root"
	echo "for docker we dont need root previlage"
	exit
fi


if [ -x "$(command -v docker)" ];
then
	echo "Update docker"
else
	echo "Installing docker"
	sudo yum update -y
	sudo yum install yum-utils device-mapper-persistent-data lvm2 -y
	sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
	sudo yum install docker-ce -y
	sudo systemctl start docker
	sudo systemctl enable docker
	sudo systemctl status docker
	sudo usermod -aG docker $USER
	newgrp docker
	docker container run hello-world
fi
