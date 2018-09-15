New-AzureRmResourceGroupDeployment -ResourceGroupName SG-HomeLab-SCOM-RG-01 -TemplateFile $($PSScriptRoot + '\AzureRMTemplates\VNetDeploy to AU-QRM-NonProd-RG-01.json') -DeploymentName VNetDeploy
