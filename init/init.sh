#!/bin/bash
# Create Resource Group, App Service Plan and Node 8.1 web app

echo "Creating resource group";
az group create -n SampleWebAppRG -l eastus;

echo "Creating app service plan";
az appservice plan create -n SampleWebAppPlan -g SampleWebAppRG --sku FREE;

echo "Creating web app using Node 8.1";
az webapp create -g SampleWebAppRG --plan SampleWebAppPlan -n jlockeSampleWebApp --runtime "NODE|8.1";

