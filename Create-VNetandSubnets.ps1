New-AzureRmResourceGroupDeployment -ResourceGroupName SG-HomeLab-SCOM-RG-01 -TemplateFile $($PSScriptRoot + '\AzureRMTemplates\VNetDeploy to SG-HomeLab-SCOM-RG-01.json') -DeploymentName VNetDeploy
