# Saída do endereço IP público da instância
output "public_ip" {
  value       = aws_instance.sever-docker-app.public_ip
  description = "Endereço IP público da instância EC2"
}
