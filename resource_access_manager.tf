##########################
# Resource Access Manager
##########################
resource "aws_ram_resource_share" "this" {

  name                      = var.name
  allow_external_principals = true

  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags
  )
}

resource "aws_ram_resource_association" "this" {

  resource_arn       = aws_ec2_transit_gateway.this[0].arn
  resource_share_arn = aws_ram_resource_share.this[0].id
}

resource "aws_ram_principal_association" "this_vpc1" {

  principal          = var.vpc_attachments["vpc1"].account_id
  resource_share_arn = aws_ram_resource_share.this[0].arn
}

resource "aws_ram_principal_association" "this_vpc2" {

  principal          = var.vpc_attachments["vpc2"].account_id
  resource_share_arn = aws_ram_resource_share.this[0].arn
}

resource "aws_ram_principal_association" "this_vpc3" {

  principal          = var.vpc_attachments["vpc3"].account_id
  resource_share_arn = aws_ram_resource_share.this[0].arn
}

resource "aws_ram_principal_association" "this_vpc4" {

  principal          = var.vpc_attachments["vpc4"].account_id
  resource_share_arn = aws_ram_resource_share.this[0].arn
}

resource "aws_ram_principal_association" "this_vpc5" {

  principal          = var.vpc_attachments["vpc5"].account_id
  resource_share_arn = aws_ram_resource_share.this[0].arn
}