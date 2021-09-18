#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo mkdir /var/www/html/images
sudo chmod 777 /var/www/html/images
cd /var/www/html/images
sudo wget https://terraform-aws-team3.s3.amazonaws.com/image.jpg
sudo wget https://terraform-aws-team3.s3.amazonaws.com/image.html
mv image.html index.html
sudo systemctl enable httpd --now