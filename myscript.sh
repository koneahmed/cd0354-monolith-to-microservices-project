kubectl apply -f env-configmap.yml
kubectl apply -f env-secrets.yml



kubectl delete deployment feed
kubectl delete deployment user
kubectl delete deployment frontend
kubectl delete deployment reverseproxy


kubectl delete deployment backend-feed
kubectl delete deployment backend-user


kubectl apply -f user-deployment.yml
kubectl apply -f feed-deployment.yml
kubectl apply -f reverseproxy-deployment.yml
kubectl apply -f frontend-deployment.yml
