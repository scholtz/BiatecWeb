kubectl apply -f deployment-sandbox.yaml -n aledger
kubectl delete configmap aledger-sandbox-conf -n aledger
kubectl create configmap aledger-sandbox-conf --from-file=conf -n aledger
kubectl rollout restart deployment/aledger-web-sandbox-deployment -n aledger
