New-AzureRmResourceGroupDeployment -ResourceGroupName SG-HomeLab-SCOM-RG-02 -TemplateFile $($PSScriptRoot + '\AzureRMTemplates\NSGsDeploy to SG-HomeLab-SCOM-RG-02.json') -DeploymentName NSGsDeploy -Force -DeploymentDebugLogLevel All -Mode Complete
