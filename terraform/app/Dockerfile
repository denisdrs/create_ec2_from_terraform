# Usa uma imagem do servidor web Nginx como base
FROM nginx:alpine

# Copia os arquivos do site para o diretório padrão do Nginx
COPY src /usr/share/nginx/html

# Expondo a porta 80 para acessarmos o servidor web
EXPOSE 80

# Iniciar o Nginx (default do container Nginx)
CMD ["nginx", "-g", "daemon off;"]
