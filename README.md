
## Registry

Deploys 3 instances and set up docker registries on them.

Takes your ssh public key as input

```bash
sudo terraform init && sudo terraform apply --auto-approve && cd docker-registry/ && sleep 25 && sudo ansible-playbook deploy-docker-registry.yaml
```