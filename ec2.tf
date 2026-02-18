
import {
  to       = aws_instance.demo_ec2_0
  provider = aws
  identity = {
    account_id = "038462791702"
    id         = "i-0668c7cd7e04a8366"
    region     = "eu-west-1"
  }
}

resource "aws_instance" "demo_ec2_0" {
  provider                             = aws
  ami                                  = "ami-080ecf65f4d838a6e"
  associate_public_ip_address          = false
  availability_zone                    = "eu-west-1c"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  ipv6_addresses                       = []
  key_name                             = "kprwindows"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.19.167"
  region                               = "eu-west-1"
  secondary_private_ips                = []
  security_groups                      = ["launch-wizard-19"]
  source_dest_check                    = true
  subnet_id                            = "subnet-069f3d23d47711158"
  tags = {
    Name = "demo-search-import-instance"
  }
  tags_all = {
    Name = "demo-search-import-instance"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-06e02c6bede1f7090"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  primary_network_interface {
    network_interface_id = "eni-00af3c2488743b14e"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}

import {
  to       = aws_instance.demo_ec2_1
  provider = aws
  identity = {
    account_id = "038462791702"
    id         = "i-0cca233bf4826f94b"
    region     = "eu-west-1"
  }
}

resource "aws_instance" "demo_ec2_1" {
  provider                             = aws
  ami                                  = "ami-03446a3af42c5e74e"
  associate_public_ip_address          = false
  availability_zone                    = "eu-west-1c"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = true
  force_destroy                        = null
  get_password_data                    = false
  hibernation                          = false
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = 0
  ipv6_addresses                       = []
  key_name                             = "kprwindows"
  monitoring                           = false
  placement_partition_number           = 0
  private_ip                           = "172.31.19.35"
  region                               = "eu-west-1"
  secondary_private_ips                = []
  security_groups                      = ["launch-wizard-20"]
  source_dest_check                    = true
  subnet_id                            = "subnet-069f3d23d47711158"
  tags = {
    Name = "demo-search-import-instance2"
  }
  tags_all = {
    Name = "demo-search-import-instance2"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["sg-0e3b367a69d68f6ff"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  primary_network_interface {
    network_interface_id = "eni-03cc1181d55e8a391"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = true
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    tags                  = {}
    tags_all              = {}
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }
  timeouts {
    create = null
    delete = null
    read   = null
    update = null
  }
}
