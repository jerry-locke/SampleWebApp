# SampleWebApp
- Nodejs app for testing local git deployments to Azure.
- Designed to be run on a WSL or Linux system running azure cli 2.0.

## init/init.sh
- Creates the resource group
- Creates app service plan
- Creates the node app v 8.1
- Installs nodejs locally
- Installs native addons

## Post install
- add a deployment user this is a global user for all deployments
``` 
#syntax
az webapp deployment user set --user-name <username> --password <password>
```
- add git remote to deploy updates to Azure
```
#syntax 
git remote add azure  https://<user>@<appName>.scm.azurewebsites.net:443/<appName>.git
```

- deploy
```
#syntax
git <action> <remoteName> <branch>
#example
git push azure master
```
