variable "project_name"{
    type = string
}

variable "environment"{
    type = string
}


variable "vpc_cidr"{
  #default = {}
  default     = "10.0.0.0/16"
  description = "vpc vpc-cidr-block creation"
}

variable "enable_dns_hostnames"{
  default = true
}

variable "common_tags"{
    default = {}
}

variable "vpc_tags"{
    default = {}
}
variable "igw_tags"{
    default = {}
}
variable "public_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please provide 2 valid public subnets cidrs"
    }
}
variable "public_subnet_tags"{
    default = {}
}

variable "private_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please provide 2 valid private subnets cidrs"
    }
}
variable "private_subnet_tags"{
    default = {}
}

variable "database_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please provide 2 valid database subnets cidrs"
    }
}
variable "database_subnet_tags"{
    default = {}
}

variable "db_subnet_group_tags"{
    default = {}
}

variable "nat_gateway_tags"{
    default = {}
}