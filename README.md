# Create a tenant

```
helm install --generate-name ./ -n $(openssl rand -hex 5) --create-namespace


kubectl get ingress -A
```


## Install Ambassador
https://www.getambassador.io/docs/latest/topics/install/install-ambassador-oss/#helm

```
helm repo add datawire https://www.getambassador.io

# install api gateway not aes

helm install ambassador -n ambassador datawire/ambassador --set enableAES=false --set image.repository=docker.io/datawire/ambassador --set image.tag=1.8.1

kubectl port-forward ambassador-5d96c6bc68-dwhfb 8877
http://localhost:8877/ambassador/v0/diag/
```