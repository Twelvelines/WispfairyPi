sudo systemctl stop hostapd

#/etc/dhcpcd.conf:#deny
sudo mv /etc/dhcpcd.conf /etc/dhcpcd.conf.backup
sudo mv /etc/dhcpcd.conf.copy /etc/dhcpcd.conf
sudo mv /etc/dhcpcd.conf.backup /etc/dhcpcd.conf.copy

sudo brctl addbr br0
sudo brctl addif br0 eth0
#sudo brctl delif br0 eth0
#sudo brctl delbr br0

#/etc/network/interfaces:#bridge
sudo mv /etc/network/interfaces /etc/network/interfaces.backup
sudo mv /etc/network/interfaces.copy /etc/network/interfaces
sudo mv /etc/network/interfaces.backup /etc/network/interfaces.copy

#/etc/default/hostapd:#DAEMON
sudo mv /etc/default/hostapd /etc/default/hostapd.backup
sudo mv /etc/default/hostapd.copy /etc/default/hostapd
sudo mv /etc/default/hostapd.backup /etc/default/hostapd.copy

sudo systemctl start hostapd
