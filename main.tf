resource "aws_launch_template" "template" {
  name_prefix = "${var.name}-${var.env}"
  image_id = data.aws_ami.ami.id
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1"]
  desired_capacity = 1
  max_size = 1
  min_size = 1
}

