# Simple ELB Target-group

Creates set of target-group resources.

## Usage

```hcl
module "elb_targetgroup" {
  source = "../../"
  name   = "simple-elb-targetgroup"
  vpc_id = "vpc-7925711e"
}
```

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```
