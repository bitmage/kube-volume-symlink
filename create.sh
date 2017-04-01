#!/bin/bash
kubectl create secret generic test-cert --from-file=./secrets/test-cert
kubectl create secret generic test-auth --from-file=./secrets/test-auth
kubectl create -f proxy.yaml
