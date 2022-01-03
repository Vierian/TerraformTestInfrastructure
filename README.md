# TerraformTestInfrastructure


So far it creates two instances of EC2 Ubuntu machines (Eligible for free tier), RDS postgres instance and whole network.

EC2 instances - Public and private (You can access public from local using SSH, but to access private You need to use public as a relay)
RDS - Access is allowed only on posgres port and only from public subnet
