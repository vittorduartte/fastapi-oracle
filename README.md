# Python, FastAPI and Oracle Client

🇧🇷 Imagem Python com ambiente FastAPI e suporte a conexão ao banco de dados Oracle.

🇺🇸 Python image with FastAPI environment and supports for connection Oracle database.

<p align="center">   
   <img alt="Stars" src="https://img.shields.io/github/stars/vittorduartte/fastapi-oracle?color=E34447&label=STARS&logo=3C424B&logoColor=3C424B&style=for-the-badge&labelColor=222222" />

   <img alt="Forks" src="https://img.shields.io/github/forks/vittorduartte/fastapi-oracle?color=E34447&label=FORKS&logo=3C424B&logoColor=3C424B&style=for-the-badge&labelColor=222222" />

   <img alt="Issues" src="https://img.shields.io/github/issues/vittorduartte/fastapi-oracle?color=E34447&label=ISSUES&logo=3C424B&logoColor=3C424B&style=for-the-badge&labelColor=222222" />

   <img alt="GitHub license" src="https://img.shields.io/github/license/vittorduartte/fastapi-oracle?color=E34447&label=LICENSE&logo=3C424B&logoColor=3C424B&style=for-the-badge&labelColor=222222" />

   <a href="https://github.com/vittorduartte">
    <img alt="Follow me" src="https://img.shields.io/static/v1?label=Follow&message=vittorduartte&style=for-the-badge&color=E34447&labelColor=222222" />
   </a>
</p>

## 🛠 Preparando o ambiente:

1. Na pasta do projeto crie um arquivo **docker-compose.yml**:

```docker-compose
version: "3.9"

services:
  fastapi:
    build: .
    command: uvicorn main:app --host 0.0.0.0 --port 8000
    volumes:
      - ./:/src/app/
    ports:
      - 8000:8000
```

2. Executando o **docker-compose**:

```sh
docker-compose up
```

3. ou para executá-lo em segundo plano, temos:

```sh
docker-compose up -d --build
```

> a flag --build cria as imagens antes de iniciar os contêineres.

4. Para um ambiente de desenvolvimento, você pode fazer a seguinte alteração no **docker-compose.yml**:

```docker-compose
version: "3.9"

services:
  fastapi:
    build: .
    command: uvicorn main:app --reload --host 0.0.0.0 --port 8000
    volumes:
      - ./:/src/app/
    ports:
      - 8000:8000
```

## 💻 Outras dependências:

A imagem já traz as dependências necessárias para o desenvolvimento de aplicação, incluindo SQLAlchemy.

## 📋 Meta

Mateus Vitor (Owner) – [Website](https://vittorduartte.github.io/) – mateusriograndense@gmail.com
