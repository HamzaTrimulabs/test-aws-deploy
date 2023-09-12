#!/bin/bash

# setting up the node environment
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

echo "starting deployment process"

# download new version of our application
cd /home/ubuntu/test-aws-deploy
git pull https://HamzaTrimulabs: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@github.com/HamzaTrimulabs/test-aws-deploy.git develop

# install all the dependencies
echo "installing dependencies"
npm install

# build the application
# echo "building application"
# npm run build

# run the application
echo "starting the application"
cd ~
pm2 reload "Test AWS Dev 2"

echo "deployment process completed"
echo "$(date +"%Y-%m-%d %H:%M:%S") deployment success" >> /home/ubuntu/app.log






