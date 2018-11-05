# Usage of terraform with modules to create EC2 instance on AWS with a randomly generated name

[![Build Status](https://travis-ci.org/achuchulev/terraform-ec2.svg?branch=master)](https://travis-ci.org/achuchulev/terraform-ec2)

## The purpose of this repo is to demonstrate usage of terraform modules and sub-modules

### Prerequisites

* git
* terraform
* AWS subscription
* Available SSH keys for your linux user

## How to build

### Download the repo and go to the repo directory

```
git clone https://github.com/achuchulev/terraform-ec2.git
cd terraform-ec2/
```

### Create a terraform.tfvars file and reflect your setup there

```
aws_access_key = ""
aws_secret_key = ""
ami_id = "ami-id"
region = "aws-region"
instance_type = "some_instance_type"
subnet_id = "subnet-id"
vpc_security_group_ids = ["sg-id"]
public_key = ""
```

### Export your AWS access key and secret key as enviroment variables

```
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
```

### How to build/destroy AWS instance

```
terraform init
terraform plan
terraform apply
terraform destroy
```

## How to test

### on Linux

#### Prerequisites

* You will need to install EC2 drivers and the AWS SDK for Ruby

```
gem install test-kitchen
gem install kitchen-inspec
gem install aws-sdk
gem install ec2
```

#### Run test

Run `kitchen test` 

### on MAC

#### Prerequisites

##### Install rbenv to use ruby version 2.3.1

```
brew install rbenv
rbenv install 2.3.1
rbenv local 2.3.1
rbenv versions
```

##### Add the following lines to your ~/.bash_profile:

```
eval "$(rbenv init -)"
true
export PATH="$HOME/.rbenv/bin:$PATH"
```

##### Reload profile: 

`source ~/.bash_profile`

##### Install bundler

```
gem install bundler
bundle install
```

#### Run the test: 

`bundle exec kitchen test`


## How to setup your travis test environment

```
1. cp ~/.ssh/id_rsa id_rsa (to copy your private key to the repo directory)
2. tar cvf secrets.tar terraform.tfvars id_rsa (create an archive that includes terraform.tfvars and your private key)
3. travis encrypt-file secrets.tar (encrypt archive overrideing existing secrets.tar.enc)
4. edit .travis.yml and replace $encrypted_xxxxxxxx_key and $encrypted_xxxxxxxx_iv with those from output of previous command)
5. rm secrets.tar id_rsa (to prevent uploading private_key in plain text directly to repo)
6. push changes to your repo
```
