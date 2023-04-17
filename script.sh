#!/bin/bash
export RG=rg-chirag-test
export LOCATION=westeurope
export APP_SERVICE_PLAN=asp-chirag-test
export WEB_APP=app-chirag-test
export WEB_APP_RUNTIME=NODE:14-lts

echo "Create Resrouce group"
az group create -l $LOCATION -n $RG
echo "Crete App service plan"
az appservice plan create -g $RG -n $APP_SERVICE_PLAN --is-linux
echo "Create Web app"
az webapp create -g $RG -p $APP_SERVICE_PLAN -n $WEB_APP -r $WEB_APP_RUNTIME
