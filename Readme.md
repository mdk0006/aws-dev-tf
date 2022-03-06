# Creating AWS Environment for Testing Purposes

## Architecture Diagram
![image](https://user-images.githubusercontent.com/63061732/156931754-1953dc1d-c752-41f8-8833-84561ab99294.png)


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
* Conditions to apply
```
interpreter= var.os_host== "windows" ? ["Powershell", "-Command"] : ["Bash", "-c"]
```
_Here interpreter is taken as example you can use conditions anywhere with in tf files first one is for true and second is for false_
**Note:** _Terraform console only use the config which are present in .tf files_
* To enter the value of variable or var file using console
```
terraform console -var="os_host=unix" -var-file="dev.tfvars"  
```
* To show full state
```
terraform show
```
* To show all outputs
```
terraform output
```

### Variable Precedence in Terraform
![image](https://user-images.githubusercontent.com/63061732/156918410-35a56fb5-bab9-42d5-9fe4-a5e72503d960.png)

## Useful Links
* [Course Link](https://courses.morethancertified.com/)
* [Instance Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)
* [EIP](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)
* [Variable](https://www.terraform.io/language/values/variables)
* [Conditional](https://www.terraform.io/language/expressions/conditionals)
* [Outputs](https://www.terraform.io/language/values/outputs)
* [Templatefile](https://www.terraform.io/language/functions/templatefile)
* [Provisioners](https://www.terraform.io/language/resources/provisioners/syntax)
* [Key Pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair)
* [Data-Source-ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami)
* [Security-Group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
* [RT Association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)
* [State](https://www.terraform.io/language/state)
* [VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
* [Providers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc)
* [Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)
* [IGW](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway)
* [Route Table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)
## Notes
* _Local provisioner → on your local machine_
* _${var.} → interpolation_
* _For the data source you have to give the data name append when calling it_
* _You can use both key_name or id for the keypair assigning under the ec2 instance_
* _Use terraform state show aws_instance.dev_node → to check the available options_
* _A data source is basically just a query of the AWS API to receive information needed to deploy a resource. In this case, we need the AMI ID._
* _SG → no tags because they have name attribute_
* _You can add description to both ingress and egress of the sg_
* _Please keep in mind we have to give resource after terraform state show_






