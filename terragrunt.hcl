remote_state {
  backend = "s3"
  config = {
    bucket         = "terraform-demo-demand-terraform-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = replace("${path_relative_to_include()}-lock-table", "/", ".")
  }
}