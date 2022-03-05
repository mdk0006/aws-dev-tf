# Creating AWS Environment for Testing Purposes
## Tools Used

* **Terraform** (*IaC*)
* **AWS** (*Cloud Provider*)
### Optional
* **GitHub** (*SCM*)
* **VSCode** (*IDE*)

Some basic _**Terraform**_ commands are
* For initializing the terraform
```
terraform init 
```
* For checking the resource to be created or to be destroyed for current configuration
```
terraform plan
```
* For applying the current configuration
```
terraform apply
```
* For formatting the current configurations
```
terraform fmt
```
* For destroying the created infra by terraform 
```
terraform destroy
```
* For enlisting the created resources from current config
```
terraform state list
```
* Auto approve flag for both apply and destroy
```
terraform apply --auto-approve
```
* For enlisting the state attributes for the specific resource
```
terraform state show <resource>.<resource_name>
```
