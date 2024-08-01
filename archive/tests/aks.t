AKS Config
  $ export EXTRA=D=1
  $ ops se config reset >/dev/null
  $ ops setup aks create 2>&1
  Please, first configure AKS with "ops setup config aks"
  error: task: Failed to run task "create": task: Failed to run task "prereq": exit status 1
  [1]
  $ ops setup config aks --name=ops --region=eastus --count=3  --vm=Standard_B4ms --disk=30 | sort
  AKS_COUNT=3
  AKS_DISK=30
  AKS_NAME=ops
  AKS_REGION=eastus
  AKS_VM=Standard_B4ms
AKS Create
  $ ops setup aks create
  RUN: az version
  DATA: az account show --query id -o tsv
  RUN: az account set --subscription $DATA
  RUN: az group create --name ops --location eastus
  RUN: az aks create -g ops -n ops --enable-managed-identity --node-count 3 --node-osdisk-size=30 --node-vm-size=Standard_B4ms
  RUN: az aks get-credentials --name ops --resource-group ops --overwrite-existing -f $NUV_TMP/kubeconfig
AKS Delete  
  $ ops setup aks delete
  *** Deleting the ops cluster
  DATA: az account show --query id -o tsv
  RUN: az account set --subscription $DATA
  RUN: az aks delete --name ops --resource-group ops
  RUN: rm $NUV_TMP/kubeconfig
