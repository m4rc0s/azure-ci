sudo kubectl run nginx --image nginx --port 80
sudo kubectl expose deploy/nginx --port 80 --type NodePort 
sudo minikube service nginx --url

Sem necessidade de SUDO
sudo cp /etc/kubernetes/admin.conf $HOME/
sudo chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf


========
How to run MongoDB Kubernetes

sudo kubectl run mongodb --image mongo:3.5 --port 27017

-> com isso cria a definição de deployment
-> vai criar definicao de ReplicaSet
-> vaio criar a definicao de Pods


kubectl get pods -> visualizar containers
kubectl get pods -w -> visualizar + watch containers
kubectl logs ID_POD -> visualizar logs
kubectl exec -it ID_POD -- /bin/


para aparecer

kubectl 

kubectl port-forward api-heroes 4000:4000


Modelo de Template

{
    "apiVersion":"v1",
    "kind": "Pod",
    "metadata": {
        "name": "api-heroes",
        "labels": {
            "app": "api-heroes",
            "version": "v1"
        }
    },
    "spec": {
        "containers": [
            {
                "name": "api-heroes",
                "image": "erickwendel/api-heroes-kroton",
                "ports": [{
                    "containerPort": 4000
                }],
                "env": [
                    {
                        "name": "MONGO_URL",
                        "value": "172.17.0.3"
                    },
                    {
                        "name": "PORT",
                        "value": 4000
                    }
                ]
            }
        ]
    }
}


No Create faço as definições de PODS

kubectl expose pod api-heroes --port 4000 --type NodePort => isso gera uma porta "alta" para expor a porta 4000 

minikube service <nome_do_serviço> --url => devolve a url da aplicação