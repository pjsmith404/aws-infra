output "tf_backend_bucket" {
  description = "Bucket name for TF state backend"
  value = aws_s3_bucket.tf_backend.id
}

output "syphilicious_net_zone_id" {
  description = "The zone ID for syphilicious.net"
  value = aws_route53_zone.syphilicious_net.zone_id
}

output "pjsmith404_org_zone_id" {
  description = "The zone ID for pjsmith404.org"
  value = aws_route53_zone.pjsmith404_org.zone_id
}
