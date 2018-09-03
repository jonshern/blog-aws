




resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "www.sherndevelopment.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.lb.public_ip}"]
}



resource "aws_route53_record" "www" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "www.${data.aws_route53_zone.selected.name}"
  type    = "CNAME"
  ttl     = "5"

  records = ['']


}