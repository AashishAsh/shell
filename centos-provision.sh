#!/bin/bash

ip=`ifconfig | grep "192.168.33" | awk {'print $2'} | cut -d "." -f4`
echo $ip

echo "127.0.1.1	node`echo $ip`.example.com	node`echo $ip`"

echo "preparing the hostname change"
#sudo sed -i 's/localhost.localdomain/node`echo $ip`.example.com/g' /etc/sysconfig/network
echo "hostname file changes - Completed"

echo "preparing the etc hosts file"
echo "127.0.0.1	localhost" > /etc/hosts
echo "127.0.1.1	node`echo $ip`.example.com	node`echo $ip`" >> /etc/hosts

echo "192.168.33.12	ubuntu-chefserver.example.com	ubuntu-chefserver" >> /etc/hosts
echo "192.168.33.9	ubuntu-chefworkstation.example.com	ubuntu-chefworkstation" >> /etc/hosts


echo "192.168.33.15	node15.example.com	node15" >> /etc/hosts
echo "192.168.33.16	node16.example.com	node16" >> /etc/hosts
echo "192.168.33.17	node17.example.com	node17" >> /etc/hosts
echo "192.168.33.18	node18.example.com	node18" >> /etc/hosts
echo "192.168.33.19	node19.example.com	node19" >> /etc/hosts
echo "192.168.33.20	node20.example.com	node20" >> /etc/hosts
echo "192.168.33.21	node21.example.com	node21" >> /etc/hosts
echo "192.168.33.22	node22.example.com	node22" >> /etc/hosts
echo "192.168.33.23	node23.example.com	node23" >> /etc/hosts
echo "192.168.33.24	node24.example.com	node24" >> /etc/hosts

echo "etc hosts file changes - Completed"
sleep 10

echo "restarting the node`echo $ip`"
init 6