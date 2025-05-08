#!/bin/bash

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg

echo "$(date) ${text}" >> /home/ubuntu/start-log