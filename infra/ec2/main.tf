locals {
  instance_type = "t2.micro"
}



resource "aws_instance" "ec2" {
  associate_public_ip_address = true
  name  = "${local.name}- ${var.my}-stdneim"
  ami                         = data.aws_ami.ubuntu.id
  #ami = local.instance_type
  instance_type               = var.instance_type

  #  subnet_id                   = var.subnet_id
  # iam_instance_profile        = var.iam_instance_profile

  # key_name = var.key_name
  /*   root_block_device {
    encrypted   = true
    volume_size = var.volume_size
  }
  user_data = var.user_data
  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
  # Ignore base AMI changes. We want to determine when to create
  # new instances. Suddenly creating a new instance might be very disturbing
  lifecycle {
    ignore_changes = [
      ami,
    ]
  } */

}


