#!/bin/bash

uname -r
apt-get install rsync -y
ssh copy_id  root@ip_address_of_remote system
