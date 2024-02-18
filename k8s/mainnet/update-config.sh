kubectl apply -f deployment-main.yaml -n biatec
kubectl delete configmap biatec-main-conf -n biatec
kubectl create configmap biatec-main-conf --from-file=conf -n biatec
kubectl rollout restart deployment/biatec-web-main-deployment -n biatec
