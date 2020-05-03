# Deploying an Instance to Vultr Using Terraform  
Export Vultr API Key
```
export VULTR_API_KEY=<YOUR-API-KEY>
```  
Initialize terraform 
```
terraform init
```  
Deploy 
```
terraform appy -auto-approve
```  
Destroy environment
```
terraform destroy -auto-approve
```