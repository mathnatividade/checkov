# Use a imagem base oficial do Python
FROM python:3.8-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos de requisitos para o contêiner
COPY requirements.txt .

# Instale as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante dos arquivos da aplicação para o contêiner
COPY . .

# Defina o comando padrão para executar a aplicação
CMD ["python", "app.py"]
# test8
