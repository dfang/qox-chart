# Create a tenant

```
helm install --generate-name ./ -n $(openssl rand -hex 5) --create-namespace


kubectl get ingress -A
```