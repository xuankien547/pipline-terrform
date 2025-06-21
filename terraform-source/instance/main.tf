module "ec2-instance" {
  source = "module/instance_ec2"
        ami_id = "ami-003dd55e96a1e1f57"
        instance_type = "t2.micro"  
        subnet_id = "subnet-12345678"  
        security_group_ids = ["sg-12345678"] 
        associate_public_ip = true 
        instance_name = "MyEC2Instance"  
        tags = {
            Environment = "Development"  
        }
        depends_on = [aws_vpc.main]  
        lifecycle {
            create_before_destroy = true  
        }
        provisioner "local-exec" {
            command = "echo 'Instance created with ID: ${self.id}'"
        }
}