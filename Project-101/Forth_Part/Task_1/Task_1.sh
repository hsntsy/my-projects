#!/bin/bash

sed -i "s/ec2-private_ip/$(grep "PrivateIpAddress" info.json | head -1 | cut -d'"' -f4) /" terraform.tf

#above command is changing some information in terraform.tf to get info.json
