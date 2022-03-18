#!/bin/bash
#deploy nfs-client-provisioner
kubectl apply -f ./storageclass/clusterrole.yaml
kubectl apply -f ./storageclass/clusterrolebinding.yaml
kubectl apply -f ./storageclass/serviceaccount.yaml
kubectl apply -f ./storageclass/deployment-nfs.yaml
kubectl apply -f ./storageclass/nfs-class.yaml

#deploy data services
kubectl apply -f ./hotelResInDataFork8s/memcached-profile/.
kubectl apply -f ./hotelResInDataFork8s/memcached-rate/.
kubectl apply -f ./hotelResInDataFork8s/memcached-reserve/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-geo/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-profile/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-rate/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-recommendation/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-reservation/.
kubectl apply -f ./hotelResInDataFork8s/mongodb-user/.
kubectl apply -f ./hotelResInDataFork8s/consul/.
kubectl apply -f ./hotelResInLogicFork8s/jaeger-deployment.yaml

sleep 10s

#deploy logic services
kubectl apply -f ./hotelResInDataFork8s/search/.
kubectl apply -f ./hotelResInLogicFork8s/.
