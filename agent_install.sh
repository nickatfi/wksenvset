#!/bin/bash
apt-get update 
apt-get -y install puppet

service puppet stop
cp -f etc.hosts /etc/hosts
cp -f puppet.agent.conf /etc/puppet/puppet.conf

puppet agent –enable
service puppet start
