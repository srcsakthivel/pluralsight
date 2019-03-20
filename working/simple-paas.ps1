### Define Deployment Variables

$location = 'East US'
$resourceGroupName = 'srcsakthivel-simple-paas-template'
$resourceDeploymentName = 'srcsakthivel-paas-template-deployment'
$templatePath = 'C:\Users\sakthivel\source\repos\pluralsight\working\'
$templateFile = 'simple-paas.json'
$template = $templatePath + $templateFile

$template 

### Create Resource Group

New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Verbose -Force


### Deploy Resources

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
