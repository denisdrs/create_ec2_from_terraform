#!/bin/bash

sudo apt-get update

sudo apt-get install python3 -y
sudo apt-get install curl git zip -y
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
sudo systemctl start docker

#docker pull denisrodz/site-demo-html:latest

#docker run -dit --name site -p 8080:80 denisrodz/site-demo-html:latest

