output "efs_access_point" {
   value = aws_efs_access_point.efs_access_point
 }

output "elb_link" {
  value = module.elb_http.this_elb_dns_name
}