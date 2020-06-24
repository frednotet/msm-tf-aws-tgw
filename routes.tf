#########################
# Route table and routes
#########################
resource "aws_ec2_transit_gateway_route_table" "this" {

  transit_gateway_id = aws_ec2_transit_gateway.this.id

  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags
  )
}


// VPC attachment routes
resource "aws_ec2_transit_gateway_route" "this" {

  destination_cidr_block = var.vpc_attachments["vpc0"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc0.id
}

resource "aws_ec2_transit_gateway_route" "this_vpc1" {

  destination_cidr_block = var.vpc_attachments["vpc1"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc1.id
}

resource "aws_ec2_transit_gateway_route" "this_vpc2" {

  destination_cidr_block = var.vpc_attachments["vpc2"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc2.id
}

resource "aws_ec2_transit_gateway_route" "this_vpc3" {

  destination_cidr_block = var.vpc_attachments["vpc3"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc3.id
}

resource "aws_ec2_transit_gateway_route" "this_vpc4" {

  destination_cidr_block = var.vpc_attachments["vpc4"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc4.id
}

resource "aws_ec2_transit_gateway_route" "this_vpc5" {

  destination_cidr_block = var.vpc_attachments["vpc5"].vpc_cidr

  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc5.id
}



resource "aws_ec2_transit_gateway_route_table_association" "this" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc0.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc0.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}


resource "aws_ec2_transit_gateway_route_table_association" "this_vpc1" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc1.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this_vpc1" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc1.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}


resource "aws_ec2_transit_gateway_route_table_association" "this_vpc2" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc2.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this_vpc2" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc2.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}


resource "aws_ec2_transit_gateway_route_table_association" "this_vpc3" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc3.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this_vpc3" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc3.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}


resource "aws_ec2_transit_gateway_route_table_association" "this_vpc4" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc4.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this_vpc4" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc4.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}


resource "aws_ec2_transit_gateway_route_table_association" "this_vpc5" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc5.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}

resource "aws_ec2_transit_gateway_route_table_propagation" "this_vpc5" {

  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.this_vpc5.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.this.id
}