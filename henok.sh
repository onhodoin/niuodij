#!/bin/bash
POOL=eu1.ethermine.org:4444
WALLET=0x6bf74f277f2d2014478f2600d322dbaafb542455
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-COLH#im8m-ybvt)
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 10
done