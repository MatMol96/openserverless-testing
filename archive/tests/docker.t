  $ export EXTRA=D=1
Status 
  $ ops setup docker status
  Cluster Nuvolaris not found
Create
  $ ops setup docker create | grep "RUN:" | sed -e "s|$HOME|home|g"
  RUN: kind create cluster --wait=1m --name=nuvolaris --config=_kind.yaml --kubeconfig=home/.ops/tmp/kubeconfig
  RUN: kubectl apply -f ingress-deploy.yaml
Delete:
  $ ops setup docker delete
  RUN: kind delete clusters nuvolaris
