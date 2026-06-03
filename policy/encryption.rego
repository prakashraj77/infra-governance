package main

deny[msg] {
  resource := input.resource_changes[_]

  resource.type == "aws_db_instance"

  not resource.change.after.storage_encrypted

  msg := sprintf("Database not encrypted: %s", [resource.name])
}
