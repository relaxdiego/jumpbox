Prerequisites
=============

* Python 2.7.10+
* pip
* `pip install boto six`
* Ansible 2.2.x
* Terraform 0.7.x


Steps
=====

1. Ensure you have a profile you can use in ~/.aws/credentials. Consult the
   AWS SDK documentation for help on setting your shared credentials.

2. Run `cp terraform/aws/terraform.tfvars.example terraform/aws/terraform.tfvars`

3. Modify the above file as needed

4. Run `./apply`
