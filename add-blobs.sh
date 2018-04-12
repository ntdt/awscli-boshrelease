
#!/bin/sh

DIR=`pwd`

mkdir -p .downloads

cd .downloads

if [ ! -f ${DIR}/blobs/awscli/awscli-bundle.zip ];then
    curl -L -O -J https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
    bosh add-blob --dir=${DIR} awscli-bundle.zip awscli/awscli-bundle.zip
fi

cd -
