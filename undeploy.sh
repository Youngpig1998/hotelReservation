#!/bin/bash


#undeploy logic services
kubectl delete -f ./hotelResInLogicFork8s/.
kubectl delete -f ./hotelResInDataFork8s/search/.

sleep 10s

#deploy data services
kubectl delete -f ./hotelResInDataFork8s/consul/.
kubectl delete -f ./hotelResInDataFork8s/memcached-profile/.
kubectl delete -f ./hotelResInDataFork8s/memcached-rate/.
kubectl delete -f ./hotelResInDataFork8s/memcached-reserve/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-geo/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-profile/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-rate/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-recommendation/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-reservation/.
kubectl delete -f ./hotelResInDataFork8s/mongodb-user/.
