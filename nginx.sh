#!/bin/bash

#copy nginx from shared directory
cp -r /v_share_1/nginx/ /home/vagrant/
chown -R vagrant:vagrant /home/vagrant/nginx/
#Starting nginx server
./nginx/sbin/init.sh start
