# Cloud-Provisioning-Toolkit-for-AWS

# Cloud Provisioning Toolkit

This Terraform project sets up an AWS infrastructure with a VPC, public/private subnets, EC2 instances, and an S3 bucket.

## Prerequisites
- Terraform >= 1.0.0
- AWS CLI configured with valid credentials
- AWS account

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/username/cloud_provisioning_toolkit.git
   cd cloud_provisioning_toolkit

2. Initialize Terraform:

     terraform init



3. Apply the configuration:

     terraform apply

## Configuration

Update variables.tf to modify the default region, project name, or instance types.

Replace placeholder AWS credentials in main.tf with your actual credentials or use AWS CLI configuration.

## Notes

The AMI ID in modules/ec2/main.tf is region-specific. Update it for your region if needed.

The S3 bucket name must be globally unique.


### .gitignore

## Terraform

*.tfstate *.tfstate.backup .terraform/ terraform.tfvars


## GitHub Repository Instructions

1. Create a new repository on GitHub named `cloud_provisioning_toolkit`.
2. Push the code:
   ```bash
   git init
   git add .
   git commit -m "Initial commit for Cloud Provisioning Toolkit"
   git remote add origin https://github.com/username/cloud_provisioning_toolkit.git
   git push -u origin main

3. Replace username in the above command with your GitHub username.
4. Update the AWS credentials in main.tf with secure variables or use AWS CLI configuration before deployment.
