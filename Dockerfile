#1º passo -> definir imagem base
FROM node:10-alpine

#2º passo -> copiar arquivos para o container (com comando ADD não énecessário criar o diretório, pois é criado automaticamente caso não exista)
ADD . /src

#3º passo -> definir onde os comandos serão executados
WORKDIR /src

#4º passo -> instalar dependencias globais do projeto
RUN npm i -g typescript

#5º passo -> restaurar as dependencias do projeto
RUN npm install

#6º passo -> compilar o projeto
RUN npm run build

#7º passo -> rodar o projeto (CMD pode ser substituido na execução)
CMD npm start