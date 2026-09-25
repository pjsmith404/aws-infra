resource "aws_route53_zone" "pjsmith404_org" {
  name = "pjsmith404.org"
}

resource "aws_route53_record" "pjsmith404_org_caa" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "pjsmith404.org"
  type = "CAA"
  ttl = 86400
  records = ["0 issue \"letsencrypt.org\""]
}

resource "aws_route53_record" "pjsmith404_org_mx" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "pjsmith404.org"
  type = "MX"
  ttl = 86400
  records = ["0 ."]
}

resource "aws_route53_record" "pjsmith404_org_txt" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "pjsmith404.org"
  type = "TXT"
  ttl = 86400
  records = ["v=spf1 -all"]
}

resource "aws_route53_record" "_dmarc_pjsmith404_org" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "_dmarc.pjsmith404.org"
  type = "TXT"
  ttl = 86400
  records = ["v=DMARC1; p=reject;"]
}

resource "aws_route53_record" "pjsmith404_org_a" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "pjsmith404.org"
  type = "A"
  ttl = 300
  records = [var.public_ipv4]
}

resource "aws_route53_record" "pjsmith404_org_aaaa" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "pjsmith404.org"
  type = "AAAA"
  ttl = 300
  records = [var.public_ipv6]
}

resource "aws_route53_record" "www_pjsmith404_org_a" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "www.pjsmith404.org"
  type = "A"
  ttl = 300
  records = [var.public_ipv4]
}

resource "aws_route53_record" "www_pjsmith404_org_aaaa" {
  zone_id = aws_route53_zone.pjsmith404_org.zone_id
  name = "www.pjsmith404.org"
  type = "AAAA"
  ttl = 300
  records = [var.public_ipv6]
}

