$location = "eastus"
$resourceGroupName = "oc-test-vm-deployment2"

$resourceGroup = New-AzResourceGroup -Name $resourceGroupName -Location $location;

$templateFile = ".\template.json";
$parametersFile= ".\parameters.json";

New-AzResourceGroupDeployment `
  -Name "testDeployment" `
  -ResourceGroupName $resourceGroup.ResourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parametersFile -Mode Incremental -DeploymentDebugLogLevel All -Verbose -Force