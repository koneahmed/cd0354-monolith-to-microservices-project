kubectl apply -f aws-secret.yaml
kubectl apply -f env-configmap.yml
kubectl apply -f env-secrets.yml



kubectl delete deployment feed
kubectl delete deployment user
kubectl delete deployment frontend


kubectl delete deployment backend-feed
kubectl delete deployment backend-user


kubectl apply -f user-deployment.yml
kubectl apply -f feed-deployment.yml
kubectl apply -f reverseproxy-deployment.yml
kubectl apply -f frontend-deployment.yml

kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

kubectl get deployment metrics-server -n kube-system

