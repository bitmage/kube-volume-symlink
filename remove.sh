#!/bin/bash
kubectl delete secret test-cert
kubectl delete secret test-auth
kubectl delete deploy foo-proxy
