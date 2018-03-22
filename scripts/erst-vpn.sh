#!/bin/bash

# /usr/bin/env bash

#echo "Starter vpn"

VPNUSER=MIT_BRUGERNAVN
VPNURL=https://vpn.erst.dk
sudo openvpn --mktun --dev tun1 && \
sudo ifconfig tun1 up && \
{ echo -e 'IKKE_DET_RIGTIGE_PASSWORD' ; cat /dev/stdin ; } | sudo /usr/sbin/openconnect --passwd-on-stdin --background -s /usr/share/vpnc-scripts/vpnc-script $VPNURL --user=$VPNUSER --interface=tun1
sudo ifconfig tun1 down
