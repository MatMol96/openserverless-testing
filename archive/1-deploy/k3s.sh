#!/bin/bash
set -e

# config
ops config reset
task config:aws

# reset
if ops aws vm-getip k3s-test
then ops aws vm-delete k3s-test
fi

# deploy
ops aws vm-create k3s-test
ops aws k3s-test vm-getip --vm=k3s-test | tee ip.txt
ops setup server k3s-test ubuntu



