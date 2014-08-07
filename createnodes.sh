#!/bin/bash

aws ec2 run-instances --image-id ami-b5d6a485 \
  --count ${1} \
  --instance-type t2.micro \
  --key-name ${2} \
  --security-group-ids sg-35199c50 \
  --output text \
  --user-data file://userdata.txt
