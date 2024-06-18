module "test-module" {
  source = "../infra/ec2"
  instance_type = var.instance_type  

  depends_on = [ module.]
}