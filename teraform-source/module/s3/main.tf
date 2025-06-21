resource "aws_s3_bucket" "s3_bucket" {
    bucket = var.bucket_name
    acl = var.acl

    tags = merge(
        {
        Name        = var.bucket_name
        Environment = var.environment
        },
        var.tags
    )
    
    lifecycle {
        prevent_destroy = var.prevent_destroy
    }
}