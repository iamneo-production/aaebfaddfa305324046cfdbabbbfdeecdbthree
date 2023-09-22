provider "aws" {
  region = "ap-southeast-1" # Singapore region
  access_key = "AKIAWU5PLPPPYKKG34FH"
  secret_key = "2376wGCqkLXNPVkB/m/yyb/uu128sv0xnXdL0vmt"
}

resource "aws_instance" "example" {
  ami           = "ami-0dacd9d37849a9f38" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}