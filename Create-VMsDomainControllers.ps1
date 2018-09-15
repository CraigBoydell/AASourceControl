New-AzureRmResourceGroupDeployment -ResourceGroupName SG-HomeLab-SCOM-RG-05 -TemplateFile $($PSScriptRoot + '\AzureRMTemplates\VMDeploy to SG-HomeLab-SCOM-RG-05.json') -DeploymentName VMDeploy
