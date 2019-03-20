{
$resourceGroupLocation = 'East US'
$resourceGroupName = 'srcsakthivel-paas'
$resourceDeploymentName = 'srcsakthivel-paas-deployment'
$templatePath = 'C:\Users\sakthivel\source\repos\pluralsight\working'
$templateFile = 'srcsakthivel-paas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}