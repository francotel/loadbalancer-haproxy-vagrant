#!/bin/bash
sudo apt update && sudo apt install -y nginx
echo "<h1>Web Server $(hostname -I | awk '{print $2}')</h1>" | sudo tee /var/www/html/index.html
sudo systemctl restart nginx