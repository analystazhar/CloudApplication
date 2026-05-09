output "ec2_public_ip" {
  value = aws_instance.web.public_ip
}

output "alb_dns" {
  value = aws_lb.alb.dns_name
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}
