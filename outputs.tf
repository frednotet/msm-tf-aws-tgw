// aws_ec2_transit_gateway
output "this_ec2_transit_gateway_arn" {
  description = "EC2 Transit Gateway Amazon Resource Name (ARN)"
  value       = element(concat(aws_ec2_transit_gateway.this.*.arn, [""]), 0)
}

output "this_ec2_transit_gateway_id" {
  description = "EC2 Transit Gateway identifier"
  value       = element(concat(aws_ec2_transit_gateway.this.*.id, [""]), 0)
}

output "this_ec2_transit_gateway_owner_id" {
  description = "Identifier of the AWS account that owns the EC2 Transit Gateway"
  value       = element(concat(aws_ec2_transit_gateway.this.*.owner_id, [""]), 0)
}


// aws_ram_resource_share
output "this_ram_resource_share_id" {
  description = "The Amazon Resource Name (ARN) of the resource share"
  value       = element(concat(aws_ram_resource_share.this.*.id, [""]), 0)
}


// aws_route_table
output "this_transit_gateway_route_table_id" {
  description = "Transit Gateway Route Table identifier"
  value       = element(concat(aws_ec2_transit_gateway_route_table.this.*.id, [""]), 0)
}