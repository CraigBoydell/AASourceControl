$CMDB = import-csv '\\fs0001nsg\users$\folderredirection\cboydell\Documents\INGDirect\88. Azure QRM\CMDB-ResourceGroups.csv'
$i = 0
$CMDB | foreach {
	$i++
	write-progress -Activity $($_.Name + " : " + $i + "/" + $CMDB.Count) -PercentComplete $([math]::Round(($i / $CMDB.Count) * 100, 2))
	$RG = Get-AzureRMResourceGroup -Name $_.Name -erroraction SilentlyContinue
	if ($RG -eq $NULL) {
		New-AzureRMResourceGroup -Name $_.Name -Location $_.Location -Tags @{Description = $_.Description}
	} else {
		if ($RG.Tags['Description'] -ne $_.Description) { $RG.Tags.Description = $_.Description; $RG | Set-AzureRMResourceGroup }
	}	
}

