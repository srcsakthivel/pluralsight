$location = 'Australia Southeast'
$resourceGroupName = 'srcsakthivel-simple-iaas-template'
$resourceDeploymentName = 'srcsakthivel-iaas-template-deployment1'
$templatePath = 'C:\Users\sakthivel\source\repos\pluralsight\working'
$templateFile = 'simple-iaas.json'
$template = $templatePath + '\' + $templateFile


New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $location `
    -Verbose -Force



New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force