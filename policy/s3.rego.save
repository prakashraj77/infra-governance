package main

deny[msg] {
  resource := input.resource_changes[_]

  resource.type == "aws_s3_bucket"

  resource.change.after.acl == "public-read"

  msg := sprintf("Public S3 bucket detected: %s", [resource.name])
}
