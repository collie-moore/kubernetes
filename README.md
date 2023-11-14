## Kubernetes the hard way on GCP (Google Cloud Platform) virtual machines.

[Terraform](./terraform) folder contains code to deploy nine virtual machines on GCP. Three of them are control plane nodes and six of them are worker nodes.

Terraform also creates a custom VPC network and firewall rules to allow communication between the nodes.

[Ansible](./ansible) folder contains code to install and configure all the required software on the nodes. These include:
1. Kubelctl
2. Kubelet
3. Kube-proxy
4. Containerd
5. CNI (Calico)
6. Etcd
7. among others
