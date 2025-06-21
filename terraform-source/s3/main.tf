module "s3" {
    source = "../module/s3"

    bucket_name = var.bucket_name
    acl = var.acl
    environment = var.environment
    tags = var.tags
}