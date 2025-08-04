output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}
