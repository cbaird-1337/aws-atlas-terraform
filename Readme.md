# Example - AWS and Atlas together with Terraform

This project aims to provide a very straight-forward example of using AWS and MongoDB Atlas together.


## Dependencies

* Terraform v0.12
* An AWS account - provider.aws: version = "~> 2.39"
* A MongoDB Atlas account - provider.mongodbatlas: version = "~> 0.3"

## Usage

**1\. Ensure your AWS credentials are set up.**

This can be done using environment variables:

``` bash
$ export AWS_SECRET_ACCESS_KEY='your secret key'
$ export AWS_ACCESS_KEY_ID='your key id'
```

... or the `~/.aws/credentials` file.

```
$ cat ~/.aws/credentials
[default]
aws_access_key_id = your key id
aws_secret_access_key = your secret key

```
... or follow as in the `variables.tf` file and create **terraform.tfvars** file with all the variable values and make sure **not to commit it**.

**2\. Review the Terraform plan.**

Execute the below command and ensure you are happy with the plan.

``` bash
$ terraform plan
```
This project currently does the below deployments:

- MongoDB cluster - M10
- MongoDB User (Pass the values when asked)
- AWS Custom VPC, Internet Gateway, Route Tables, Subnets with Public and Private access and appropriate resource tags
- AWS-MongoDB Atlas VPC Peering
- An optional (commented out) script to deploy an EC2 instance

**3\. Execute the Terraform apply.**

Now execute the plan to provision the AWS resources.

``` bash
$ terraform apply
```

**4\. Destroy the resources.**

Once you are finished your testing, ensure you destroy the resources to avoid unnecessary AWS charges.

``` bash
$ terraform destroy
```
