$VMLocalAdminSecurePassword = ConvertTo-SecureString "Password" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ('localuser', $VMLocalAdminSecurePassword);
(1..1) | ForEach-Object -parallel {
	$_
	new-azvm -name $_ -ResourceGroupName rg-gawe-01 -Location polandcentral -Size Standard_B4ms -Credential $using:credential
}