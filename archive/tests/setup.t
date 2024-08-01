Start
  $ export EXTRA=D=1
  $ ops setup status
  nothing installed yet
Docker
  $ ops setup devcluster
  ops setup docker create
  ops setup kubernetes create
  ops setup nuvolaris login
  $ ops setup status
  ops setup devcluster --status
  $ ops setup devcluster --status
  ops setup docker status
  $ ops setup uninstall
  ops setup devcluster --uninstall
  $ ops setup devcluster --uninstall
  ops setup docker delete
  $ ops setup status
  nothing installed yet
Cluster no context
  $ ops setup cluster
  ops setup kubernetes create CONTEXT=
  ops setup nuvolaris login
  $ ops setup status
  ops setup cluster  --status
  $ ops setup cluster --status
  ops setup kubernetes status CONTEXT=
  $ ops setup uninstall
  ops setup cluster --uninstall
  $ ops setup cluster --uninstall
  ops setup kubernetes delete CONTEXT=
  $ ops setup status
  nothing installed yet
Cluster with context
  $ ops setup cluster demo
  ops setup kubernetes create CONTEXT=demo
  ops setup nuvolaris login
  $ ops setup status
  ops setup cluster demo --status
  $ ops setup cluster demo --status
  ops setup kubernetes status CONTEXT=demo
  $ ops setup uninstall
  ops setup cluster demo --uninstall
  $ ops setup cluster demo --uninstall
  ops setup kubernetes delete CONTEXT=demo
  $ ops setup status
  nothing installed yet
Server no user
  $ ops setup server demo
  ops setup k3s create SERVER=demo USERNAME=
  ops setup kubernetes create
  ops setup nuvolaris login
  $ ops setup status
  ops setup server demo  --status
  $ ops setup server demo --status
  ops setup k3s status SERVER=demo USERNAME=
  $ ops setup uninstall
  ops setup server demo --uninstall
  $ ops setup server demo --uninstall
  ops setup k3s delete SERVER=demo USERNAME=
  $ ops setup status
  nothing installed yet
Server with user
  $ ops setup server demo user
  ops setup k3s create SERVER=demo USERNAME=user
  ops setup kubernetes create
  ops setup nuvolaris login
  $ ops setup status
  ops setup server demo user --status
  $ ops setup server demo user --status
  ops setup k3s status SERVER=demo USERNAME=user
  $ ops setup uninstall
  ops setup server demo user --uninstall
  $ ops setup server demo user --uninstall
  ops setup k3s delete SERVER=demo USERNAME=user
  $ ops setup status
  nothing installed yet

