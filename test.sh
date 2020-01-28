#!/bin/bash


# upd
nc -uzvv __destination_ip__ __list_of_udp_ports__

# tcp
nc -zvv __destination_ip__ __list_of_tcp_ports__
