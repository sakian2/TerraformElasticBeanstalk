provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_elastic_beanstalk_application" "application" {
  name        = "4CTempConverter"
}
resource "aws_elastic_beanstalk_environment" "environment" {
  name                = "4CTempConverter-env"
  application         = aws_elastic_beanstalk_application.application.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.5 running Python 3.8"

setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
      }
}