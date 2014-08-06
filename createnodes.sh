#!/bin/bash

aws ec2 run-instances --image-id ami-a53b4895 \
  --count ${1} \
  --instance-type t1.micro \
  --key-name ${2} \
  --security-group-ids sg-35199c50 \
  --subnet-id subnet-60ca2317 \
  --user-data file://userdata.txt
