variable "module_source" {
  default = "github.com/cloud3rsio/terraform-aws-elb-targetgroup"
}

variable "create_elb_targetgroup" {
  default = true
}

variable "name" {
  default = "terraform-aws-elb"
}

variable "port" {
  default = 80
}

variable "protocol" {
  default = "HTTP"
}

variable "vpc_id" {
  default = ""
}

variable "deregistration_delay" {
  default = 60
}

variable "slow_start" {
  default = 0
}

variable "proxy_protocol_v2" {
  default = false
}

variable "stickiness_cookie_duration" {
  default = 86400
}

variable "stickiness_enabled" {
  default = false
}

variable "health_check_interval" {
  default = 10
}

variable "health_check_path" {
  default = "/"
}

variable "health_check_port" {
  default = "traffic-port"
}

variable "health_check_protocol" {
  default = "HTTP"
}

variable "health_check_timeout" {
  default = 5
}

variable "health_check_healthy_threshold" {
  default = 3
}

variable "health_check_unhealthy_threshold" {
  default = 3
}

variable "health_check_matcher" {
  default = "200,301,302"
}

variable "target_type" {
  default = "instance"
}

variable "tags" {
  default = {}
}
