#!/bin/bash

declare -x RESID=${1}

NODES=$(aws ec2 describe-instances --filters Name=reservation-id,Values=$RESID --query 'Reservations[*].Instances[*].{ ID:InstanceId }' --output text)

aws ec2 create-tags --resources $NODES --output text --tags Key=Department,Value=CS Key=Project,Value=ERG Key=ER_Role,Value=Agent
