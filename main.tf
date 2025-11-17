resource "aws_vpc" "my-vpc" {
  cidr_block = "20.0.0.0/16"
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "private_sub" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "20.0.3.0/24" 
  tags = {
    Name = "my-private-subnet"
  }
}

resource "aws_subnet" "public_sub" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = "20.0.4.0/24" 
  tags = {
    Name = "my-public-subnet"
  }
}

resource "aws_internet_gateway" "my-gateway" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "my-internet-gateway"
  }
}

resource "aws_route_table" "Public" {
  vpc_id = aws_vpc.my-vpc.id

  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-gateway.id
  }
}

resource "aws_route_table_association" "Public" {
  route_table_id = aws_route_table.Public-Rt.id
  subnet_id = aws_subnet.public_sub.id
}

resource "aws_instance" "my-instance" {
  ami = "ami-02b8269d5e85954ef"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.public_sub.id
  
  tags = {
    Name = "my-instance"
  }
}