# Deployment environment variables
|Parameter|Description|Default|
|---|---|---|
|PROVISIONER_NAME | Name of the provisioner. If you change this, you also have to change it in the StorageClass `provisioner` field. | ceph.com/cephfs|
|PROVISIONER_SECRET_NAMESPACE | The namespace to which the secrets will be deployed. If this differs from the namespace where the rolebinding is deployed you have to adjust the role and rolebinding or use a clusterrole. | cephfs|

# Pre-Deployment Tasks
The files `secret.yaml` is a template. It contains a placeholder for the value.
**You want to replace it before applying.** <br/>
For example in an azure release-pipeline, using the "azure keyvault"-task to get the value and then the "replace tokens"-task. 

And don't forget to set the correct monitor-IPs in the `storageclass.yaml`!
Also the docker-registry in the `deployment.yaml` must be set to the one, where you pushed the image to.
