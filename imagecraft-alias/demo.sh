#!/bin/bash

########################
# include the magic
########################
. ../demo-magic.sh

# hide the evidence
clear

# The demo

pe "git clone -b work/prototype-alias git@github.com:canonical/imagecraft.git"
pe "cd imagecraft"
pe "make pack-snap"
pe "sudo snap install --dangerous --classic imagecraft*.snap"
pe "cd .."
pe "cat imagecraft.yaml"
pe "sudo imagecraft prime --destructive-mode"
pe "tree partitions/"
echo "Directories for the volume/pc/rootfs partition were not created, because it is mapped to the default partition."
pe "tree -L 1 prime/"
