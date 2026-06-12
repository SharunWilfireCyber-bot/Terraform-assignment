# Terraform-assignment
Changes made:

Added two new subnets in different regions to the existing VPC. (us-central1 and us-east1)
sharun-vpc
Configured firewall rules to allow HTTP and HTTPS traffic.

Provisioned two additional Compute Engine VM instances using different operating system images.

Ubuntu
Debian
Created two additional Cloud Storage buckets in different locations (US and EU).

Provisioned one MySQL and one PostgreSQL database instance.

Organized resources into separate Terraform files for better structure and management.
[vpc.tf, vm.tf, firewall.tf, db-instance.tf, bucket.tf].