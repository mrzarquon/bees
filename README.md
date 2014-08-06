Simple script to create nodes in eso environment

./creatnodes.sh $numberofnodes $sshkeytouse

to get the reservation id for easy reference with tag command, append: | sed -n '1p' | cut -f 2

This does not assign public ips to the nodes

to tag nodes for erg:
./updatetags.sh reservation-id1,reservation-id2,

to terminate nodes:

aws ec2 terminate-instances --instance-ids `./terminatenodes.sh`

