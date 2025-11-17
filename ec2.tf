# EC2 Instance
resource "aws_instance" "my_instance" {
  ami                    = "ami-02b8269d5e85954ef"
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = var.key_name
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl enable nginx
              systemctl start nginx
              echo "<h1>Hello Girish!</h1>" > /var/www/html/index.nginx-debian.html
              EOF

  tags = { Name = "ubuntu-Server" }
}
