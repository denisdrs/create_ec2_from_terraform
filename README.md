
# Upload de uma Imagem Docker para o Docker Hub

## Passos para Upload da Imagem no Docker Hub

1. **Crie a Imagem Docker**  
   Utilize o `Dockerfile` do projeto para criar a imagem com o comando `build`. Substitua `site-demo` pelo nome desejado para a imagem:

   ```bash
   docker build -t site-demo:v2 .
   ```

2. **Autentique-se no Docker Hub**  
   Caso ainda não esteja autenticado, faça login no Docker Hub:

   ```bash
   docker login
   ```

3. **Marque (Tag) a Imagem**  
   Use uma `tag` para indicar a versão da sua imagem. Isso é importante para controle de versão.

   ```bash
   docker tag site-demo:v2 denisrodz/site-demo-html
   ```

4. **Envie a Imagem para o Docker Hub**  
   Agora, envie a imagem para o Docker Hub com o comando `push`:

   ```bash
   docker push denisrodz/site-demo-html
   ```

5. **Verifique a Imagem no Docker Hub**  
   Acesse sua conta no Docker Hub e verifique se a imagem foi carregada corretamente.

6. **Adicione uma Descrição e Boas Práticas no Docker Hub**  
   No Docker Hub, edite a descrição da sua imagem para incluir informações sobre a versão, instruções de uso, variáveis de ambiente (se houver) e qualquer outro detalhe necessário.

Seguindo essas etapas, sua imagem estará pronta e otimizada no Docker Hub para uso e compartilhamento.

