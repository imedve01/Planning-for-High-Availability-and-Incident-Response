data "aws_caller_identity" "current" {}

 data "aws_ami" "amazon_linux_2" {
   most_recent = true
   owners      = ["893184025649"]

   filter {
     name   = "owner-alias"
     values = ["amazon"]
   }


   filter {
     name   = "name"
     values = ["amzn2-ami-hvm*"]
   }
 }