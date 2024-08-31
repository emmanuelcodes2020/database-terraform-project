resource "aws_db_instance" "personal_db" {
    allocated_storage = var.allocated_storage
    storage_type = var.storage_type
    engine = "mysql"
    engine_version = "5.7"
    instance_class = var.instance_class
    identifier = "personaldb"
    username = var.username
    password = var.password

    vpc_security_group_ids = [ aws_security_group.rds_sg.id ]
    db_subnet_group_name = aws_db_subnet_group.personal_db_subnet_group.name

    skip_final_snapshot = true

    monitoring_interval = 60
    monitoring_role_arn = aws_iam_role.rds_monitoring_role.arn
    performance_insights_enabled = false

    multi_az = true

}

resource "aws_db_subnet_group" "personal_db_subnet_group" {
  name = "personal_db_subnet_group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "Personal DB Subnet Group"
  }
}