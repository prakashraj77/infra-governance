package main

deny[msg] {
  resource := input.resource_changes[_]

  resource.type == "aws_security_group"

  ingress := resource.change.after.ingress[_]

  ingress.cidr_blocks[_] == "0.0.0.0/0"

  msg := sprintf("Open Security Group detected: %s", [resource.name])
}
