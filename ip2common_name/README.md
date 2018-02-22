# IP 2 Common Name 

## Description / Problem
Working my job as PEN Tester i was looking for a tool that translates me a bunch of ip addresses into hostnames (or at least points me to the company they are belonging).  
Sure you can use RDNS or WHOIS but if both of them are empty or just not maintained, you might get stuck.  

This is why i wrote this little dirty thing, which helped me quite a lot for validation.
Sure it's not 100% OSINT, since you connect to the target server but - to be hoenst - the value it brings is worth the connect.

## What it does
It connects to a target server by using the openssl client and reads the COMMON NAME from the certificate.


## Usage
`runme.sh <ip-list> <output file>`

## Requirements
- openssl
- functional BASH

## Comment 
please forgive the dirty coding - it was done late in the evening and i needed it for a project - but hey IT WORKS !
