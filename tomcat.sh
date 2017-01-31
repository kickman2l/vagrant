#!/bin/bash

#installing java for tomcat
sudo yum install -y java-1.8.0-openjdk

#copy tomcat files
cp -r /v_share_1/tomcat/ /home/vagrant/
chown -R vagrant:vagrant /home/vagrant/tomcat/
#start tocmat server
sudo -s "/home/vagrant/tomcat/bin/startup.sh" -u vagrant
