#!/bin/bash

# This is a comment




sudo apt-get update
sudo apt-get install squid
echo "Squid Proxy Is enabled"
echo "Squid Proxy Is Configuired"
 echo "systemctl restart squid"

echo "verify the status of the service "
echo"Type i to enter insert mode."
sudo systemctl status squid

