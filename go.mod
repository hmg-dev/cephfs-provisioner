module cephfs-provisioner

go 1.15

require (
	github.com/kubernetes-sigs/sig-storage-lib-external-provisioner v3.0.0+incompatible
	github.com/miekg/dns v1.1.35 // indirect
	github.com/prometheus/client_golang v1.8.0 // indirect
	k8s.io/api v0.17.14
	k8s.io/apimachinery v0.17.15-rc.0
	k8s.io/client-go v0.17.14
	k8s.io/klog v1.0.0
	sigs.k8s.io/sig-storage-lib-external-provisioner v4.1.0+incompatible // indirect
)
