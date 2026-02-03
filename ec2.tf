provider "aws" {
 region = "us-east-1" 
}
resource "aws_launch_template" "backend" {
  name_prefix   = "axy-backend"
  image_id      = "ami-0c02fb55956c7d316"
  instance_type = "t3.micro"
}
