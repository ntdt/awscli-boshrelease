## AWS CLI BOSH Release


for local build

```
rm -rf .final_builds releases
git clone git@github.com:bosh-packages/python-release.git ../python-release
bosh vendor-package python-2.7 ../python-release
./add-blobs.sh
bosh create-release --name=awscli --force --timestamp-version --tarball=/tmp/awscli-boshrelease.tgz && bosh upload-release /tmp/awscli-boshrelease.tgz
```
