param location string = 'westeurope'

@allowed([
  'PROD'
  'DEV'
])
param env string
param appName string


module storage1 'storage.bicep' = {
  name: '${deployment().name}-sa1'
  params: {
    appName: appName
    env: env
    location: location
  }
}

module storage2 'storage.bicep' = {
  name: '${deployment().name}-sa2'
  params: {
    appName: appName
    env: env
    location: location
  }
}
