# CubeJs + K8s
## Guide for dev
[Tutorial](https://cube.dev/blog/cubejs-open-source-dashboard-framework-ultimate-guide/)

##Creating Load Blanacer
```
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account)

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.35.0/deploy/static/provider/cloud/deploy.yaml
```
