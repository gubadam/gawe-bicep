param (
	[String]$rgName = "rg-gawe-01"
)

$timestamp = Get-Date -Format 'yyyyMMdd-HHmm'

$deploymentName = "MyDeployment-$timestamp"

New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $rgName -TemplateFile './templates/infra.bicep'