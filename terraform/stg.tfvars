region = "us-east-1"

eks_cluster_name = "demo-cluster"

# Using this values for a VPC infrastructure already existent
create_vpc      = false
vpc_id          = "vpc-028e5bd127ffb9444"
private_subnets = ["subnet-0c9478d9da82f0579", "subnet-04e972ab97a50a310"]