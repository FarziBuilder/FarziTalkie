#!/bin/bash

# Copy save_dhcpcd.conf to /etc/dhcpcd.conf
sudo cp /home/faraaz/FarziTalkie/save_dhcpcd.conf /etc/dhcpcd.conf

# Copy save_masq.conf to /etc/dnsmasq.conf
sudo cp /home/faraaz/FarziTalkie/save_masq.conf /etc/dnsmasq.conf

# Enable and start dnsmasq
sudo systemctl enable dnsmasq
sudo systemctl start dnsmasq

# Restart dhcpcd and networking services
sudo systemctl restart dhcpcd
sudo systemctl restart networking

# Reboot the system
echo "Rebooting the system now. Please wait for the reboot to complete and then run post_reboot.sh script."
sudo reboot