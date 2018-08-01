output "id" {
  value = "${element(concat(aws_lb_target_group.main.*.id, list("")), 0)}"
}

output "arn" {
  value = "${element(concat(aws_lb_target_group.main.*.arn, list("")), 0)}"
}

output "arn_suffix" {
  value = "${element(concat(aws_lb_target_group.main.*.arn_suffix, list("")), 0)}"
}

output "name" {
  value = "${element(concat(aws_lb_target_group.main.*.name, list("")), 0)}"
}
