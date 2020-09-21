#!/usr/bin/env bash
# This script installs all the prerequisites needed to run the project

#!/usr/bin/env bash
# This script installs all the prerequisites needed to run the project.

#!/bin/bash

# Install Java 8
sudo yum install -y java-1.8.0-openjdk.x86_64

# Install wget
sudo yum install -y wget

# Install Git
sudo yum install -y git

# Install Unzip
sudo yum install -y unzip

# Install SBT
curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo
sudo yum install -y sbt

sbt test

sbt dist

sbt stage
