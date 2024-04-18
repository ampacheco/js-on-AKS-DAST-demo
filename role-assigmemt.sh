
appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")

# Get AGIC addon identity
agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")

echo -e "${appGatewayId}\n${appGatewaySubnetId}\n${agicAddonIdentity}"

# Assign network contributor role to AGIC addon identity to subnet that contains the Application Gateway
az role assignment create --assignee $agicAddonIdentity --scope $appGatewaySubnetId --role "Network Contributor"