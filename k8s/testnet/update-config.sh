kubectl apply -f deployment-testnet.yaml -n aledger
kubectl delete configmap aledger-testnet-conf -n aledger
kubectl create configmap aledger-testnet-conf --from-file=conf -n aledger
kubectl rollout restart deployment/aledger-web-testnet-deployment -n aledger
