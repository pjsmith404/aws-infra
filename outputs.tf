output "syphilicious_net_zone_id" {
  description = "The zone ID for syphilicious.net"
  value = aws_route53_zone.syphilicious_net.zone_id
}
