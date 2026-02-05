variable "project_name" {
  type    = string
  default = "expense"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "common_tags" {
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "vpc_tags" {
  default = {
    Name = "expense-vpc"
  }
}
# public subnet CIDRs list
variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_tags" {
  default = [
    {
      Name = "expense-public-subnet-1"
    },
    {
      Name = "expense-public-subnet-2"
    }
  ]
}

# private subnet CIDRs list
variable "private_subnet_cidrs" {
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "private_subnet_tags" {
  default = [
    {
      Name = "expense-private-subnet-1"
    },
    {
      Name = "expense-private-subnet-2"
    }
  ]
}
# database private subnet CIDRs list
variable "database_private_subnet_cidrs" {
  default = ["10.0.6.0/24", "10.0.7.0/24"]
}

variable "database_private_subnet_tags" {
  default = [
    {
      Name = "expense-database-private-subnet-1"
    },
    {
      Name = "expense-database-private-subnet-2"
    }
  ]
}
