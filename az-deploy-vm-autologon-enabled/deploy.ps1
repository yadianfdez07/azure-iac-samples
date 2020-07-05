$location = "eastus"
$resourceGroupName = "oc-test-vm-deployment009"

$resourceGroup = New-AzResourceGroup -Name $resourceGroupName -Location $location;

$templateFile = "C:\Users\Yadian\Downloads\template\template.json";
$parametersFile= "C:\Users\Yadian\Downloads\template\parameters.json";

New-AzResourceGroupDeployment `
  -Name "testDeployment" `
  -ResourceGroupName $resourceGroup.ResourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parametersFile -Mode Incremental -DeploymentDebugLogLevel All -Verbose -Force