resource "aws_db_instance" "main" {
  allocated_storage     = "${var.db_size_in_gb}"
  engine                = "postgres"
  engine_version        = "${var.postgres_version}"
  instance_class        = "${var.db_instance_class}"
  identifier            = "${var.database_name}"
  username              = "${var.master_username}"
  password              = "${var.master_user_password}"
  skip_final_snapshot   = true
  db_subnet_group_name  = "${var.subnet_ids}"
}

resource "aws_db_security_group" "security_group" {
  name = "${var.prefix}-rds-ingress"
  ingress {
    cidr = "0.0.0.0/0"
  }
}