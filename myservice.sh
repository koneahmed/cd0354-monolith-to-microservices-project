kubectl delete svc backend-feed
kubectl delete svc backend-user
kubectl delete svc frontend
kubectl delete svc reverseproxy



kubectl apply -f user-service.yml
kubectl apply -f feed-service.yml
kubectl apply -f reverseproxy-service.yml
kubectl apply -f frontend-service.yml



