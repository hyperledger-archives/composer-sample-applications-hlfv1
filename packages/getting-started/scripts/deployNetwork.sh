#!/bin/bash

# Exit on first error, print all commands.
set -ev
if [$1] then
    echo "deployNetwork needs to specify a hlf version as 'hlfv1 | hlf'"
    exit
if [$1 == "hlfv1"] then
    composer network deploy --archiveFile digitalPropertyNetwork.bna  -p hlfv1 -i admin -s adminpw && composer network list -n digitalproperty-network -p hlfv1 -i admin -s adminpw
elif[$1 = "hlf"] then
    composer network deploy --archiveFile digitalPropertyNetwork.bna  --enrollId WebAppAdmin --enrollSecret DJY27pEnl16d && composer network list -n digitalproperty-network --enrollId WebAppAdmin --enrollSecret DJY27pEnl16d
else 
   echo "$1 is unsupported hlf version"
   exit 1

