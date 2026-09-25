resource "aws_route53_zone" "syphilicious_net" {
  name = "syphilicious.net"
}

resource "aws_route53_record" "syphilicious_net_caa" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "syphilicious.net"
  type = "CAA"
  ttl = 86400
  records = ["0 issue \"letsencrypt.org\""]
}

resource "aws_route53_record" "syphilicious_net_mx" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "syphilicious.net"
  type = "MX"
  ttl = 86400
  records = ["0 ."]
}

resource "aws_route53_record" "syphilicious_net_txt" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "syphilicious.net"
  type = "TXT"
  ttl = 86400
  records = ["v=spf1 -all"]
}

resource "aws_route53_record" "_dmarc_syphilicious_net" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "_dmarc.syphilicious.net"
  type = "TXT"
  ttl = 86400
  records = ["v=DMARC1; p=reject;"]
}

resource "aws_route53_record" "syphilicious_net_a" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "syphilicious.net"
  type = "A"
  ttl = 300
  records = [var.public_ipv4]
}

resource "aws_route53_record" "syphilicious_net_aaaa" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "syphilicious.net"
  type = "AAAA"
  ttl = 300
  records = [var.public_ipv6]
}

resource "aws_route53_record" "jelly_syphilicious_net_a" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "jelly.syphilicious.net"
  type = "A"
  ttl = 300
  records = [var.public_ipv4]
}

resource "aws_route53_record" "jelly_syphilicious_net_aaaa" {
  zone_id = aws_route53_zone.syphilicious_net.zone_id
  name = "jelly.syphilicious.net"
  type = "AAAA"
  ttl = 300
  records = [var.public_ipv6]
}
