# A repo that creates an EC2 instance in AWS with a randomly generated name

### Prerequisits

* git
* terraform
* AWS subscription
* Available SSH keys for your linux user

### Download the repo and go to the repo directory

```
git clone https://github.com/achuchulev/terraform-ec2.git
cd terraform-ec2/
```

### Create a terraform.tfvars file and reflect your setup there

```
aws_access_key = ""
aws_secret_key = ""
ami_id = "ami-id"  # Once ami-id is changed terraform is going to re-create the ec2 instance with new name
region = "aws-region"
instance_type = "t2.micro"
subnet_id = "subnet-id"
vpc_security_group_ids = ["sg-id"]
```

### Export your AWS access key and secret key as enviroment variables

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
```

### Build/destroy AWS instance

```
terraform init
terraform plan
terraform apply
terraform destroy
```
