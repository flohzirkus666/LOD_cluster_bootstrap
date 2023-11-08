!# /bin/bash

cd

echo "Cloning custom galaxy repo"
git clone -b feature/enhanced_cluster_setup https://github.com/flohzirkus666/netapp.ontap

echo "Installing galaxy collection"
ansible-galaxy collection install netapp.ontap

echo "Installing Python dependencies"
pip3 install netapp_lib netapp.ontap

