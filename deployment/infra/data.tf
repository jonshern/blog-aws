data "aws_caller_identity" "current" {}

data "aws_route53_zone" "selected" {
  name         = "sherndevelopment.com."
  private_zone = false
}



output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}