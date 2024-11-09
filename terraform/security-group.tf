# Grupo de segurança para a instância EC2
resource "aws_security_group" "siteSG-app" {
  name        = "siteSG-app"
  description = "Security group for server-docker-app"

  # Regra de entrada para permitir acesso HTTP
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitir acesso HTTP público
  }

  # Regra de entrada para permitir acesso SSH
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitir acesso SSH público (restrinja conforme necessário)
  }

  # Regras de saída para permitir tráfego total
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Permitir saída total
  }
}
