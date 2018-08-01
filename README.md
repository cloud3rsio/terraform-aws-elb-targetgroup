# AWS ELB Targetgroup Terraform module

Terraform module which creates ELB Targetgroup resources on AWS.

These types of resources are supported:

* [ELB Targetgroup](https://www.terraform.io/docs/providers/aws/r/lb_target_group.html)

## Usage

```hcl
module "elb_targetgroup" {
  source = "github.com/cloud3rsio/terraform-aws-elb-targetgroup"
  name   = "simple-elb-targetgroup"
  vpc_id = "vpc-00000000"

  tags = {
    Environment = "development"
  }
}
```

## Examples

* [Simple Targetgroup](https://github.com/cloud3rsio/terraform-aws-elb-targetgroup/examples/simple-targetgroup/)

## License

Apache 2 Licensed. See LICENSE for full details.
