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

  resource_arn       = aws_ec2_transit_gateway.this.arn
  resource_share_arn = aws_ram_resource_share.this.id
}

resource "aws_ram_principal_association" "this_vpc1" {

  principal          = var.vpc_attachments["vpc1"].account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_share_accepter" "receiver1_accept" {
  provider = aws.vpc1
  share_arn = aws_ram_principal_association.this_vpc1.resource_share_arn
}

resource "aws_ram_principal_association" "this_vpc2" {

  principal          = var.vpc_attachments["vpc2"].account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_share_accepter" "receiver2_accept" {
  provider = aws.vpc2
  share_arn = aws_ram_principal_association.this_vpc2.resource_share_arn
}

resource "aws_ram_principal_association" "this_vpc3" {

  principal          = var.vpc_attachments["vpc3"].account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_share_accepter" "receiver3_accept" {
  provider = aws.vpc3
  share_arn = aws_ram_principal_association.this_vpc3.resource_share_arn
}

resource "aws_ram_principal_association" "this_vpc4" {

  principal          = var.vpc_attachments["vpc4"].account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_share_accepter" "receiver4_accept" {
  provider = aws.vpc4
  share_arn = aws_ram_principal_association.this_vpc4.resource_share_arn
}

resource "aws_ram_principal_association" "this_vpc5" {

  principal          = var.vpc_attachments["vpc5"].account_id
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_share_accepter" "receiver5_accept" {
  provider = aws.vpc5
  share_arn = aws_ram_principal_association.this_vpc5.resource_share_arn
}