#roboshop-dev-frontend

resource "aws_security_group" "main" {
  name        = var.sg_name
  vpc_id      = var.vpc_id
  description = var.sg_description

  tags = merge(
    var.sg_tags,
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-${var.sg_name}"
    }
  )
}