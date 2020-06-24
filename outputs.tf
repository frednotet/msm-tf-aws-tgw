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