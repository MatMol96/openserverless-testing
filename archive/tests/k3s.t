  $ export EXTRA=D=1
Status
  $ ops setup k3s status 
  No Cluster Installed
  $ mkdir -p ~/.ops/tmp ; touch ~/.ops/tmp/kubeconfig 
  $ ops setup k3s status 
  RUN: kubectl get nodes
  $ rm  ~/.ops/tmp/kubeconfig
Install
  $ ops setup k3s install SERVER=demo USERNAME= | sed -e "s|$HOME|HOME|"
  RUN: k3sup install --host=demo --user=root --local-path=HOME/.ops/tmp/kubeconfig
  $ ops setup k3s install SERVER=demo | sed -e "s|$HOME|HOME|"
  RUN: k3sup install --host=demo --user=root --local-path=HOME/.ops/tmp/kubeconfig
Create
  $ ops setup k3s create SERVER=demo USERNAME=demo | sed -e "s|$HOME|HOME|"
  RUN: k3sup install --host=demo --user=demo --local-path=HOME/.ops/tmp/kubeconfig
  RUN: kubectl --kubeconfig HOME/.ops/tmp/kubeconfig apply -f cert-manager.yaml
  $ ops -config -d | grep NUVOLARIS_APIHOST
  NUVOLARIS_APIHOST=http://demo
Delete
  $ ops setup k3s delete SERVER=demo
  RUN: ssh -o StrictHostKeyChecking=no root@demo sudo /usr/local/bin/k3s-uninstall.sh
  $ ops setup k3s delete SERVER=demo USERNAME=
  RUN: ssh -o StrictHostKeyChecking=no root@demo sudo /usr/local/bin/k3s-uninstall.sh
  $ ops setup k3s delete SERVER=demo USERNAME=demo
  RUN: ssh -o StrictHostKeyChecking=no demo@demo sudo /usr/local/bin/k3s-uninstall.sh
  $ ops -config -d | grep NUVOLARIS_APIHOST
  NUVOLARIS_APIHOST=auto