#!/bin/bash


NODES=$(aws ec2 describe-instances --filters Name=instance-type,Values='t2.small' Name=instance-state-code,Values=16 --query 'Reservations[*].Instances[*].{ ID:InstanceId }' --output text)

echo $NODES
