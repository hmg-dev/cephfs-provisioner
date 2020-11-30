# Preface
Forked from: https://github.com/kubernetes-retired/external-storage/tree/master/ceph/cephfs

See [changelog](CHANGELOG.md) for the differences and fixes to the original project.

## Motivation
The original project, was the only working solution to connect an external ceph-cluster with dynamic provisioning.
But the project is dead for quite some time now.<br/>
And other (free) storage-solutions won't work as well: https://blog.hmg.dev/2020/11/27/ceph-vs-kubernetes-odyssee-zu-einem-dynamic-provisioner-fuer-externe-cluster/ 

# CephFS Volume Provisioner for Kubernetes 1.17+

Using Ceph volume client

## Known limitations

* Kernel CephFS doesn't work with SELinux, setting SELinux label in Pod's securityContext will not work.
* Kernel CephFS doesn't support quota or capacity, capacity requested by PVC is not enforced or validated.
* Currently each Ceph user created by the provisioner has `allow r` MDS cap to permit CephFS mount.

## Acknowledgement

Inspired by CephFS Manila provisioner and conversation with John Spray
