#! /bin/bash

set -x
set -e

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3

chmod 700 get_helm.sh

./get_helm.sh

helm version

helm repo add stable https://charts.helm.sh/stable

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm search repo prometheus-community

helm install stable prometheus-community/kube-prometheus-stack

#kubectl get svc
#kubectl edit svc stable-kube-prometheus-sta-prometheus   
    # in type change to LoadBalancer
#kubectl edit svc stable-grafana
    # in type change to LoadBalancer

    #kubectl get svc

    # login promethues using dns:9090 and grafana using DNS

   #grafana--> UserName: admin
#Password: prom-operator



