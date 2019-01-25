sudo kubectl run nginx --image nginx --port 80
sudo kubectl expose deploy/nginx --port 80 --type NodePort 
sudo minikube service nginx --url

http://ec2-3-83-164-193.compute-1.amazonaws.com:31230/

#------
MongoDB

sudo kubectl run mongodb --image mongo:3.5 --port 27017
> 
    Vai criar a definição de deployment
    Vai criar a definicao de ReplicaSet
    Vai criar a definicao de Pods

kubectl get pods -> visualizar containers
kubectl get pods -w => visualizar + watch
kubectl logs ID_POD => visualizar logs
kubectl exec -it ID_POD -- /bin/bash -> acessa o pod via SSH

kubectl create -f nomearquivo.json

kubectl get pods --output wide - para pegar o iP

<!-- kubectl port-forward api-heroes 4000:4000 -->
kubectl expose pod api-heroes \
    --port 4000 \
    --type NodePort

minikube service api-heroes --url


> para aparecer o dashboard sem problema no redirect (somente na AWS)
sudo kubectl proxy --address='0.0.0.0' \
    --disable-filter=true & 

