#!/bin/zsh

if [[ "$EUID" != 0  ]]
then
    echo "run as root!"
    exit 1
fi

nping -c 1 --icmp --icmp-type 8 127.0.0.1

#nping -c 1 --icmp --icmp-type 8 -d3 127.0.0.1
#nping -c 1 --icmp --icmp-type 8 --debug 127.0.0.1

# tcpdump cmd used to capture pcap file
#tcpdump -i lo "icmp[0]==8 || icmp[0]==0" -w capture.pcap
