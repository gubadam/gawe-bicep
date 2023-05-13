param (
	[String]$rgName = "rg-gawe-01"
)

$timestamp = Get-Date -Format 'yyyyMMdd-HHmm'

$deploymentName = "MyDeployment-$timestamp"

$deploymentParams = @{
	Name = $deploymentName
	ResourceGroupName = $rgName
	TemplateFile = './templates/infra.bicep'
	TemplateParameterFile = './templates/infra.dev.parameters.json'
}
New-AzResourceGroupDeployment @deploymentParams 