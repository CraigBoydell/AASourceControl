New-AzureRmResourceGroupDeployment -ResourceGroupName SG-HomeLab-SCOM-RG-04 -TemplateFile $($PSScriptRoot + '\AzureRMTemplates\VMDeploy to SG-HomeLab-SCOM-RG-04.json') -DeploymentName VMDeploySQL
