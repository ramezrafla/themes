#! /bin/sh

LOCATION=/home/ubuntu/build_tools/out/linux_64/onlyoffice/documentserver/sdkjs/slide/themes
SERVER=server.office2.io

rm src.tgz > /dev/null
tar czvf src.tgz src
scp -i ~/.ssh/ec2.pem src.tgz ubuntu@$SERVER:$LOCATION
ssh -i ~/.ssh/ec2.pem ubuntu@$SERVER "cd $LOCATION && tar xvf src.tgz"
