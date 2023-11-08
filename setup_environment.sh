#!/bin/bash

cd ~

echo "Installing missing packages"
yum install -y python3-pip

echo "Upgrading pip"
python3 -m pip install --upgrade pip

echo "Installing Ansible"
python3 -m pip install ansible

echo "Installing Python dependencies"
python3 -m pip install netapp_lib netapp.ontap

echo "Cloning custom galaxy repo"
git clone -b feature/enhanced_cluster_setup https://github.com/flohzirkus666/netapp.ontap

echo "Installing galaxy collection"
ansible-galaxy collection install netapp.ontap

