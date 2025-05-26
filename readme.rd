#### This is for resource quots and namespace creation. (using LB to expose the applicaiton)


1. minikube kubectl -- apply -f namespace-quota.yaml

2. minikube kubectl -- apply -f deployment.yaml

minikube kubectl -- get deployment -n dev-apps

3. minikube kubectl -- apply -f web-service.yaml

minikube kubectl --exec -it web-deployment-7cc646fbd8-qlnt7 -n dev-apps -- bin/bash

# create and update index.html file

minikube kubectl -- describe deployment web-deployment -n dev-apps

# To get lb url:
minikube service web-service --url -n dev-apps

PS E:\kubernetes\dep-task\v1> minikube service web-service --url -n dev-apps
http://127.0.0.1:61000
! Because you are using a Docker driver on windows, the terminal needs to be open to run it.