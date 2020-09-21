# This script installs all the prerequisites needed to run the project.

#!/bin/bash

# Install Java 8
sudo yum install -y java-1.8.0-openjdk.x86_64
sudo yum install -y java-1.8.0-openjdk-devel.x86_64

# Install wget
sudo yum install -y wget

# Install Git
sudo yum install -y git

# Install Unzip
sudo yum install -y unzip

# Install SBT
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum install -y sbt

# Install Docker
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf repolist -v
sudo dnf list docker-ce --showduplicates | sort -r
sudo dnf install -y docker-ce-3:18.09.1-3.el7
sudo systemctl start docker

sbt test

sbt dist

sbt stage
