#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<h1>Terraform EC2 Server has been successfullt setup ans waiting for the production code from the dev team </h1>
EOF
