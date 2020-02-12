#!/bin/bash
#firewall
#qywok

# bagian <ipadd>, <ipeth> diganti ip addres
ssh admin@<ipadd> -p 22
#
iptables -A INPUT -s <ipadd> -d <ipeth> -p tcp --dport <port> -j DROP
#
iptables -A OUTPUT -s <ipeth> -d <ipeth> -p tcp --dport <port> -j DROP
#
iptables -A FORWARD -s <ipadd> -d <ipeth> -p tcp --dport <port> -j DROP