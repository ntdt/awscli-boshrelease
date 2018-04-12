## AWS CLI BOSH Release

```
./add-blobs.sh
bosh create-release --name=awscli --force --timestamp-version --tarball=/tmp/awscli-boshrelease.tgz && bosh upload-release /tmp/awscli-boshrelease.tgz
```
