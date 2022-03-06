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
* For replacing just one resource 
```
terraform apply -replace aws_instance.dev_node
```
* For giving var in command line
```
terraform apply -var="variable_name=variable-value" 
```
* For giving var file 
```
terraform apply -var-file="file_name"
```
* Auto approve flag for both apply and destroy
```
terraform apply --auto-approve
```
* For enlisting the state attributes for the specific resource
```
terraform state show <resource>.<resource_name>
```
* To test the commands use _terraform console_ 
```
terraform console
```
**Note:** _Terraform console only use the config which are present in .tf files_
### Variable Precedence in Terraform
![image](https://user-images.githubusercontent.com/63061732/156918410-35a56fb5-bab9-42d5-9fe4-a5e72503d960.png)

terraform console -var="os_host=unix" -var-file="dev.tfvars"  
var.os_host 

