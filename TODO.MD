 1975  az deployment group create --resource-group Lab-RG --template-file ./vnets.bicep
 1976  az group create -l eastus -n Lab-RG
 1977  az deployment group create --resource-group Lab-RG --template-file ./vnets.bicep
 1978  az group create --name JS-AKS-RG --location eastus
 1979  az aks create -n JS-AKS -g JS-AKS-RG --network-plugin azure --enable-managed-identity -a ingress-appgw --appgw-name myApplicationGateway --appgw-subnet-cidr "10.225.0.0/16" --generate-ssh-keys --node-count 1
 1980  alias
 1981  drg Lab-RG
 1982  aglw
 1983  ls
 1984  {
 1985  appGatewayId=$(az aks show -n myCluster -g myResourceGroup -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 1986  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 1987  agicAddonIdentity=$(az aks show -n myCluster -g myResourceGroup -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 1988  az role assignment create --assignee $agicAddonIdentity --scope $appGatewaySubnetId --role "Network Contributor"; }
 1989  {
 1990  az aks show -n myCluster -g myResourceGroup -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId
 1991  az aks show -n myCluster -g myResourceGroup -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId"
 1992  az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId"
 1993  $appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 1994  az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id"
 1995  $appGatewayId 
 1996  echo $appGatewayId 
 1997  $appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 1998  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 1999  echo $appGatewayId 
 2000  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2001  az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id"
 2002  echo -e 1 2
 2003  echo -1 2
 2004  echo 1 2
 2005  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2006  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2007  echo -e $appGatewayId $appGatewaySubnetId
 2008  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2009  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2010  # Get AGIC addon identity
 2011  agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 2012  echo -e $appGatewayId\n$appGatewaySubnetId\n$agicAddonIdentity
 2013  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2014  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2015  # Get AGIC addon identity
 2016  agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 2017  echo -e '$appGatewayId\n$appGatewaySubnetId\n$agicAddonIdentity'
 2018  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2019  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2020  # Get AGIC addon identity
 2021  agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 2022  echo -e ${appGatewayId}\n${appGatewaySubnetId}\n${agicAddonIdentity}
 2023  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2024  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2025  # Get AGIC addon identity
 2026  agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 2027  echo -e "${appGatewayId}\n${appGatewaySubnetId}\n${agicAddonIdentity}"
 2028  appGatewayId=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.config.effectiveApplicationGatewayId")
 2029  appGatewaySubnetId=$(az network application-gateway show --ids $appGatewayId -o tsv --query "gatewayIPConfigurations[0].subnet.id")
 2030  # Get AGIC addon identity
 2031  agicAddonIdentity=$(az aks show -n JS-AKS -g JS-AKS-RG -o tsv --query "addonProfiles.ingressApplicationGateway.identity.clientId")
 2032  echo -e "${appGatewayId}\n${appGatewaySubnetId}\n${agicAddonIdentity}"
 2033  # Assign network contributor role to AGIC addon identity to subnet that contains the Application Gateway
 2034  az role assignment create --assignee $agicAddonIdentity --scope $appGatewaySubnetId --role "Network Contributor"
