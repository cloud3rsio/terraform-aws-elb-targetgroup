provider "aws" {
  region = "ap-northeast-1"
}

module "elb_targetgroup" {
  source = "../../"
  name   = "simple-elb-targetgroup"
  vpc_id = "vpc-7925711e"

  tags = {
    Environment = "development"
  }
}
