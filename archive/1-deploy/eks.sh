#!/bin/bash
set -e

# config
ops config reset
task config:eks

# reset
if ops cloud aws vm-getip k3s-test
then ops cloud aws vm-delete k3s-test
fi

# deploy
ops cloud aws vm-create k3s-test
ops cloud aws k3s-test vm-getip --vm=k3s-test | tee ip.txt
ops setup server k3s-test ubuntu


