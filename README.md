# EKS infrastructure by Terraform
This repository includes the required Terraform files to provision following components,
- Single node group EKS cluster 
- AWS Load Balancer Controller
- External DNS namespace

# terraform versions
- Terraform v1.9.5

# Usage
1. Clone this repository
2. `cd` to the repository folder
3. Initialize terraform dependencies by,
```
terraform init
```
4. Get the list of resources being created by,
```
terraform plan
```
5. Create the planned resources by,
```
terraform apply
```
6. Destroy the resources by,
```
terraform destroy
```