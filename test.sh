#!/bin/ash

# nmap -p 100,200,300,400,500 10.4.34.51
nmap -p __list_of_ports__ __destination_ip__ --reason
