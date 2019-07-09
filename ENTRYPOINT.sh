#!/usr/bin/env bash

service openvswitch-switch start
ovs-vsctl set-manager ptcp:6640

#install POX
cd ~
git clone http://github.com/noxrepo/pox
cd pox  
git checkout dart
cd ~

bash

service openvswitch-switch stop
