param location string = 'westeurope'

@allowed([
  'PROD'
  'DEV'
])
param env string
param appName string

var storageAccountName = '${appName}st'

resource myStorage 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: (env == 'PROD') ? 'Standard_GRS' : 'Standard_LRS'
  }
}
