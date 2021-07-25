targetScope = 'subscription'
param Location string = 'WestEurope'
param companyPrefix string = 'bicep'

var ResourceGroups = [  
  'rg-${companyPrefix}-sharedservices-network-001'
  'rg-${companyPrefix}-sharedservices-vm-001'
  'rg-${companyPrefix}-citrix-network-001'
  'rg-${companyPrefix}-citrix-vm-001'
  'rg-${companyPrefix}-citrix-workers-001' 
]

resource resourcegroups 'Microsoft.Resources/resourceGroups@2021-01-01' = [for ResourceGroup in ResourceGroups: {
  location: Location
  name: ResourceGroup
}]