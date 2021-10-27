# Terraform code to deploy 3-tier architecture environment on Azure

## What is three-tier environment?
Three-tier environment is a well-established software application architecture that organizes applications into three logical and physical computing tiers: the presentation tier, or user interface, the application or business tier, where data is processed, and the data or database tier, where the data associated with the application is stored and managed.

### Architecture
![architecture](https://github.com/milind15/Hands-On/blob/d7516f5be18b1dc82cd40d58ac4c8c4046b14496/architecture.jpg)


### The Terraform resources will consists of following structure

```
├── main.tf                   // The primary entrypoint for terraform resources.
├── vars.tf                   // It contain the declarations for variables.
├── output.tf                 // It contain the declarations for outputs.
├── terraform.tfvars          // The file to pass the terraform variables values.
```

### Module

A module is a container for multiple resources that are used together. Modules can be used to create lightweight abstractions, so that you can describe your infrastructure in terms of its architecture, rather than directly in terms of physical objects.

I have created and used five modules:
1. resourcegroup - creating resourcegroup
2. networking - creating azure virtual network and required subnets
3. securitygroup - creating network security group, setting desired security rules and associating them to subnets
4. compute - creating availability sets, network interfaces and virtual machines
5. database - creating database server and database

All the stacks are placed in the modules folder and the variable are stored under **terraform.tfvars**

Each module consists minimum two files: main.tf, vars.tf

resourcegroup and networking modules consists of one extra file named output.tf

## Deployment

### Steps

**Step 0** `terraform init`

Used to initialize a working directory containing Terraform configuration files

**Step 1** `terraform plan`

Used to create an execution plan

**Step 2** `terraform validate`

Validates the configuration files in a directory, referring only to the configuration and not accessing any remote services such as remote state, provider APIs, etc

**Step 3** `terraform apply`

Used to apply the changes required to reach the desired state of the configuration
