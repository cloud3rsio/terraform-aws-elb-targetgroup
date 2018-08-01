resource "aws_lb_target_group" "main" {
  count = "${var.create_elb_targetgroup ? 1 : 0}"

  name                 = "${var.name}"
  port                 = "${var.port}"
  protocol             = "${var.protocol}"
  vpc_id               = "${var.vpc_id}"
  deregistration_delay = "${var.deregistration_delay}"
  slow_start           = "${var.slow_start}"
  proxy_protocol_v2    = "${var.proxy_protocol_v2}"
  target_type          = "${var.target_type}"

  health_check {
    interval            = "${var.health_check_interval}"
    path                = "${var.health_check_path}"
    port                = "${var.health_check_port}"
    protocol            = "${var.health_check_protocol}"
    timeout             = "${var.health_check_timeout}"
    healthy_threshold   = "${var.health_check_healthy_threshold}"
    unhealthy_threshold = "${var.health_check_unhealthy_threshold}"
    matcher             = "${var.health_check_matcher}"
  }

  stickiness {
    type            = "lb_cookie"
    cookie_duration = "${var.stickiness_cookie_duration}"
    enabled         = "${var.stickiness_enabled}"
  }

  tags = "${merge(var.tags,map("Name", format("%s", var.name)), map("ModuleSource", var.module_source))}"
}
