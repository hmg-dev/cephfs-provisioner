# HMG changes (11/2020):
- added go-dependencies via go-modules
- added build-pipeline-definition for azure-devops
- removed Makefile
- changed python-module to support python3
- bugfix in python-module to prevent sending bytes instead of string in some cases
- added secret- and storageclass-templates to k8s rbac-config
- removed non-rbac k8s-config
- removed examples-folder
- replaced Dockerfile to use Ubuntu instead of CentOS
- updated default-version in Dockerfile to "octopus"

# Old / Upstream:
## v0.1.2
- Use provisioner name as identity by default instead of random string. See #267. (https://github.com/kubernetes-incubator/external-storage/pull/270)
- Add PROVISIONER_NAME environment variable support (https://github.com/kubernetes-incubator/external-storage/pull/270)

## v0.1.1
- Fix docker file error "chmod: invalid mode: 'x+o'" (https://github.com/kubernetes-incubator/external-storage/pull/215)

## v0.1.0
- Initial release
