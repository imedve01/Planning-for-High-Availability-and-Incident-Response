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
EKS 	
  udacity-cluster with app-udacity-node-group of 2 nodes
  Deplyed in 2 regions, 2 nodes each, 4 AZ

EC2
  Deployment servers for application and databases 	
  - t3.micro (6)
  - t3.medium
  - Deplyed in 2 regions, 2 nodes each, 4 AZ

ALB:
  Load Balancer for Fail over, HA, Application Load Balancing
  Deployed in 2 regions

RDS:
  Aurora MySQL Database	
  Name: udacity-db-cluster: 
  Instances: udacity-db-instance-0 (Reader instance), udacity-db-instance-1 (Writer instance)
  - db.t2.small	
  - 2 clusters with 2 nodes each across multiple AZ, data replication and 5 day backup

VPC	
  Network Isolation and Control		
  - IPs in multiple availability zones

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
1. Using terraform, deploy application into another AWS region (e.g., us-west-2)
2. Setup a load balancer to route traffic between the regions
3. Setup Database replication to a DR region
4. Setup S3 in another (third) region

## Steps:
If infrastructure setup is done for HA, most of the steps would happen without any intervention
1. Shut down primary instances of the application in the original location. 
2. Load balancer will re-route traffic to the DR location
3. Promote DB read replica to master