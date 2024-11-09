# Recurso da instância EC2
resource "aws_instance" "sever-docker-app" {
  ami                    = "ami-0ea3c35c5c3284d82"
  instance_type          = "t2.micro"
  key_name               = "terraform-user" # Adicione sua Key Pair da AWS aqui!
  vpc_security_group_ids = [aws_security_group.siteSG-app.id]
  user_data              = file("script.sh") # Script de inicialização opcional

  tags = {
    Name = "server-site-app"
  }
}
