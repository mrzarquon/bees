Simple script to create nodes in eso environment

./creatnodes.sh $numberofnodes $sshkeytouse

to get the reservation id for easy reference with tag command, append: | sed -n '1p' | cut -f 2

This does not assign public ips to the nodes

to tag nodes for erg:
./updatetags.sh reservation-id1,reservation-id2,

to terminate nodes:

aws ec2 terminate-instances --instance-ids `./terminatenodes.sh`

Example workflow:


./createnodes.sh 10 chrisbarker | sed -n '1p' | cut -f 2

Capture reservation-id

./updatetags.sh reservation-id

terminate nodes (so you don't blow things up, this is a command you still have to call explicitly)

Terminate.sh searches for nodes that are running and have the tag ER\_Role=Agent

aws ec2 terminate-instances --instance-ids `./terminatenodes.sh`
