#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<h1><p>
The infrastructure environment has been successfully provisioned and configured using Terraform on AWS. 
The EC2 application server is operational and integrated with the required networking, security groups, 
and load balancing components. The environment is now stable, scalable, and ready for deployment of the 
production application code from the development team.
</p></h1>
EOF
