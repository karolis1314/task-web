#!/bin/bash

echo "Removing helm release."
helm delete karolis-task -n nginx-php;

sleep 20;

echo "Cleaning minikube environment."
kubectl delete ns nginx-php;