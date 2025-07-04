resource "aws_instance" "ec2-server" {
    ami           = var.ami_id
    instance_type = var.instance_type

    subnet_id              = var.subnet_id
    vpc_security_group_ids = var.security_group_ids

    associate_public_ip_address = var.associate_public_ip

    tags = merge(
        {
            Name = var.instance_name
        },
        var.tags
    )
}