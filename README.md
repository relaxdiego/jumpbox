Quickly set up your own jumpbox in AWS. Installs my [dotfiles](https://github.com/relaxdiego/dotfiles) too!

Prerequisites
=============

* Python 2.7.10+
* pip
* `pip install boto six`
* Ansible 2.2.x
* Terraform 0.7.x


Steps
=====

1. Ensure you have a profile you can use in `~/.aws/credentials`. Consult the
   AWS SDK documentation for help on setting your shared credentials.

2. Run `cp terraform/aws/terraform.tfvars.example terraform/aws/terraform.tfvars`

3. Modify the above file as needed

4. Run `./apply`


Adding More Users
=================

1. Copy the new user's public key to `pubkeys/` with the filename pattern
   `id_<username>.pub`

2. Run `./configure`. Ansible will then create a user with <username> 
   as the username and add the public key to that user's `~/.ssh/authorized_keys`.

3. The user will now be able to ssh to the machine with `ssh <username>@<ip>`


Removing Users
==============

1. Move the user's public key from `pubkeys/` to `pubkeys/remove/`

2. Run `./configure`
