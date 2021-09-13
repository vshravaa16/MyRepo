#!/bin/sh
sudo su
yum -y install httpd
systemctl enable httpd
systemctl start httpd.service

