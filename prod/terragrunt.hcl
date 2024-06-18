include {
  path = find_in_parent_folders()
}

terraform {
  source = "${find_in_parent_folders()}/../..//aws/infra"
}


inputs = {
    instance_type = "t2.micro"
    region = "eu-west-3"
}