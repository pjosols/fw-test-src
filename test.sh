#!/bin/bash


if [[ -n "${TCP_PORTS}" ]]; then
    nc -zvv $DEST_IP $TCP_PORTS
fi

if [[ -n "${TCP_PORTS}" ]]; then
    nc -uzvv $DEST_IP $UDP_PORTS
fi
