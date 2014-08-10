#!/bin/bash

aws ec2 run-instances --image-id ami-b5d6a485 \
  --count ${1} \
  --instance-type t2.small \
  --key-name ${2} \
  --security-group-ids sg-35199c50 \
  --output text \
  --block-device-mappings '[ { "DeviceName": "/dev/sda1", "Ebs": { "DeleteOnTermination": true, "VolumeType": "standard", "VolumeSize": 10 } } ]' \
  --user-data file://userdata.txt
