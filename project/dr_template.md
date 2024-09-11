# Infrastructure

## AWS Zones
us-east-2a
us-east-2b
us-west-1a
us-west-1c

## Servers and Clusters

### Table 1.1 Summary
| Asset | Purpose                                           | Size        | Qty | DR                                                                                 |
|-------|---------------------------------------------------|-------------|-----|------------------------------------------------------------------------------------|
| EKS   | udacity-cluster                                   | 2 nodes     | 2   | 2 regions, 2 nodes each, 4 AZ                                                      |
| EC2   | Deployment servers for application and databases  | t3.micro    | 6   | 2 regions, 2 nodes each, 4 AZ                                                      |
| RDS   | MySQL Database                                    | db.t2.small | 4   | 2 clusters with 2 nodes each across multiple AZ, data replication and 5 day backup |
| ALB   | Fail over, HA, Application Load Balancing         |             | 2   | 2 regions                                                                          |
| VPC   | Network Isolation and Control                     |             | 2   | IPs in multiple availability zones                                                 |
| AMI   | AMI image deployment image                        |             | 2   | AMI East / AMI West                                                                |
| S3    | S3 storage for deployment                         |             | 2   | 2 regions                                                                          |


### Descriptions
EKS:

RDS:
Aurora MySQL Database	
- udacity-db-cluster: udacity-db-instance-0 (Reader instance), udacity-db-instance-1 (Writer instance)
- db.t2.small	
- 2 clusters with 2 nodes each across multiple AZ, data replication and 5 day backup

S3:
Storage for the deployment
- 2 regions:
    - udacity-tf-igorm: US East (Ohio) us-east-2
    - udacity-tf-igorm-west: US West (N. California) us-west-1

AMI:
AMI image deployment image		
- 2	instances AMI East / AMI West
    - udacity-igorm-east2
    - udacity-igorm-west



## DR Plan
### Pre-Steps:
List steps you would perform to setup the infrastructure in the other region. It doesn't have to be super detailed, but high-level should suffice.

## Steps:
You won't actually perform these steps, but write out what you would do to "fail-over" your application and database cluster to the other region. Think about all the pieces that were setup and how you would use those in the other region