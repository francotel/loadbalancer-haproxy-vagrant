#!/bin/bash
sudo apt update && sudo apt install -y haproxy

# HAProxy Configuration
cat <<EOF | sudo tee /etc/haproxy/haproxy.cfg
frontend http_front
    bind *:80
    default_backend web_servers

backend web_servers
    balance roundrobin
    server web1 192.168.56.11:80 check
    server web2 192.168.56.12:80 check

listen stats
    mode http
    bind *:8080
    stats enable
    stats hide-version
    stats refresh 30s
    stats show-node
    stats uri /stats
EOF

sudo systemctl restart haproxy
