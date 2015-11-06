#!/bin/bash

modprobe batman-adv
ip link set dev enp0s3 mtu 1532
batctl if add enp0s3
ip link set bat0 up
alfred -i enp0s3 -m
