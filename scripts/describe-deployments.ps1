# Get all namespaces
$namespaces = kubectl get namespaces -o jsonpath='{.items[*].metadata.name}'

if ($namespaces -eq $null) {
    Write-Error "Failed to retrieve namespaces."
    exit 1
}

foreach ($namespace in $namespaces) {
    Write-Output "Describing deployments in namespace: $namespace"
    
    # Get all deployments in the current namespace
    $deployments = kubectl get deployments -n $namespace -o jsonpath='{.items[*].metadata.name}'

    if ($deployments -eq $null) {
        Write-Output "No deployments found in namespace: $namespace"
        continue
    }

    foreach ($deployment in $deployments) {
        Write-Output "Describing deployment: $deployment in namespace: $namespace"
        kubectl describe deployment $deployment -n $namespace
    }
}

Write-Output "Script execution completed."