#!/bin/bash
#1  Refresh the Software Repositories
sudo apt-get update
echo " Refresh the Software Repositories"

#2  Install Squid Package on Ubuntu
 sudo apt-get install squid
 echo " Install Squid Package on Ubuntu"
#3 Check  status squid
 systemctl status squid
#4  Set Up IP Based Authentication
echo "Set Up IP Based Authentication"
    sudo vim /etc/squid/squid.conf
#5 For Blocking Websites
echo "For Blocking Websites"
sudo vim /etc/squid/blocksite
#6 Restart the Squid service by entering
echo "Restart the Squid service by entering"
 systemctl restart squid
