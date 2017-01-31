#!/bin/bash

#copy nginx from shared directory
#redirect rules
iptables -A PREROUTING -t nat -i eth1 -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables-save
cp -r /v_share_1/nginx/ /home/vagrant/
chown -R vagrant:vagrant /home/vagrant/nginx/
#Starting nginx server
runuser vagrant -c "/home/vagrant/nginx/sbin/init.sh start"
