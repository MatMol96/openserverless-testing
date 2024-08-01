#!/bin/bash
set -e

# config
ops config reset
task config:aws

# reset
if ops aws vm-getip mk8s-test
then ops aws vm-delete mk8s-test
fi

# deploy
ops aws vm-create mk8s-test --microk8s


