#!/bin/bash

sudo echo "Installing Grafana..."
sudo echo "This script does everything for you."
sudo echo "Please wait patiently, this may take a while..."
{
echo "deb https://packages.grafana.com/enterprise/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt-get update -y
sudo apt-get install grafana -y
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server.service
} &> /dev/null
echo "Your grafana dashboard should be now available at the ip address below:"
echo "http://$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1):3000"