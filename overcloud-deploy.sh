#!/bin/bash

openstack overcloud deploy \
--templates \
-e /usr/share/openstack-tripleo-heat-templates/environments/storage-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/neutron-ovs-dpdk.yaml \
-e ./network-environment.yaml \
--stack tmrnd
--log-file overcloud-install.log &> overcloud-install.log
#--neutron-disable-tunneling \ 
#-r /home/stack/templates/roles-data.yaml \
#-e /home/stack/templates/bigswitch-config-p.yaml \
#-e /home/stack/templates/environments/neutron-ml2-bigswitch.yaml \