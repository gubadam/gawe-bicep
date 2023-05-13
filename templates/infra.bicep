param appName string

// param location string = resourceGroup().location
param location string = 'westeurope'

@allowed([
  'PROD'
  'DEV'
])
param env string

param sku string = 'F1'


module storage 'data/data.bicep' = {
  name: '${deployment().name}-data'
  params: {
    env: 'DEV'
    appName: appName
    location: location
  }
}

module app 'app/appHosting.bicep' = {
  name: '${deployment().name}-app'
  params: {
    env: 'DEV'
    appName: appName
    location: location
  }
}
