#!/bin/bash
# Create Resource Group, App Service Plan and Node 8.1 web app

echo "Creating resource group";
az group create -n SampleWebAppRG -l eastus;

echo "Creating app service plan";
az appservice plan create -n SampleWebAppPlan -g SampleWebAppRG --sku FREE;

echo "Creating web app using Node 8.1";
az webapp create -g SampleWebAppRG --plan SampleWebAppPlan -n jlockeSampleWebApp --runtime "NODE|8.1";

echo "installing nodejs"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -;
sudo apt-get install nodejs -y;

echo "installing native addons"
sudo apt-get install build-essential -y;

##notes:
##add a deployment user - note this is a global user for all deployments
# az webapp deployment user set --user-name yournamehere --password yourpasswordhere

##add git remote to deploy updates to Azure
# git remote add azure https://<user>@<appName>.scm.azurewebsites.net:443/<appName>.git

##deploy
##git <action> <remoteName> <branch>
# git push azure master