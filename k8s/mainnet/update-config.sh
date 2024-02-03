kubectl apply -f deployment-main.yaml -n aledger
kubectl delete configmap aledger-main-conf -n aledger
kubectl create configmap aledger-main-conf --from-file=conf -n aledger
kubectl rollout restart deployment/aledger-web-main-deployment -n aledger
