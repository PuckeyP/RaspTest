#!/bin/bash

cd /home/pi/RaspTest
mkdir -p ca/{root-ca,sub-ca,server}/{private,certs,newcerts,crl,csr}
chmod -v 700 ca/{root-ca,sub-ca,server}/private
touch ca/{root-ca,sub-ca}/index
openssl rand -hex 16 > ca/root-ca/serial
openssl rand -hex 16 > ca/sub-ca/serial


# Create Self Signed Private and then Public Key [ NOT THE WAY TO GO!!]

cd ca/server/private/
openssl req -new --newkey rsa:2048 -days 365 -nodes -x509 -subj '/CN=jphas.duckdns.org' > -keyout server.key -out server.crt