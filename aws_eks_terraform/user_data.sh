#!/bin/bash
#Install Docker
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl start docker
sudo systemctl enable docker

##Install Jenkins
sudo yum update –y
sudo mkdir -p /home/jenkins /var/lib/jenkins/.ssh /var/cache/jenkins/war /var/log/jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo dnf install java-17-amazon-corretto -y
sudo yum install jenkins -y
sudo yum install git -y
usermod -s /bin/bash jenkins
sudo ssh-keygen -t rsa -b 2048 -C jenkins@jenkins -N "" -f /var/lib/jenkins/.ssh/id_rsa; sudo cat /var/lib/jenkins/.ssh/id_rsa.pub > /var/lib/jenkins/.ssh/authorized_keys
sudo chown -R jenkins:jenkins /home/jenkins /var/lib/jenkins /var/cache/jenkins /var/log/jenkins; sudo chmod 0700 /var/lib/jenkins/.ssh; sudo chmod 0600 /var/lib/jenkins/.ssh/*
sudo usermod -a -G docker jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins


sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install