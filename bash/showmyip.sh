#!/bin/bash
ip a s enp0s3 |grep -w inet |awk '{print $2 }'
