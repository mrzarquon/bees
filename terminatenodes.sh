#!/bin/bash


NODES=$(aws ec2 describe-instances --filters Name=tag:ER_Role,Values=Agent Name=instance-state-code,Values=16 --query 'Reservations[*].Instances[*].{ ID:InstanceId }' --output text)

echo $NODES
