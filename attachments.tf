###########################################################
# VPC Attachments, route table association and propagation
###########################################################
resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc0" {

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc0"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc0"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc0"].name)
    },
    var.tags
  )
}


resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc1" {

  provider = aws.vpc1

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc1"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc1"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc1"].name)
    },
    var.tags
  )
}


resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc2" {

  provider = aws.vpc2

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc2"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc2"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc2"].name)
    },
    var.tags
  )
}


resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc3" {

  provider = aws.vpc3

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc3"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc3"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc3"].name)
    },
    var.tags
  )
}


resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc4" {

  provider = aws.vpc4

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc4"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc4"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc4"].name)
    },
    var.tags
  )
}


resource "aws_ec2_transit_gateway_vpc_attachment" "this_vpc5" {

  provider = aws.vpc5

  transit_gateway_id = aws_ec2_transit_gateway.this.id
  vpc_id             = var.vpc_attachments["vpc5"].vpc_id
  subnet_ids         = var.vpc_attachments["vpc5"].subnet_ids

  dns_support                                     = "enable"
  ipv6_support                                    = "enable"
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false

  tags = merge(
    {
      Name = format("%s-%s", var.name, var.vpc_attachments["vpc5"].name)
    },
    var.tags
  )
}