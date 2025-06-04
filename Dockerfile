FROM python:3.9-slim

WORKDIR /app

# Copia os arquivos da aplicação local em vez de clonar do GitHub
COPY compare-names-app/ /app/compare-names-app/

WORKDIR /app/compare-names-app

# Instala as dependências do Python, se existir requirements.txt
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

EXPOSE 8000

# Comando para iniciar o servidor (ajuste conforme o app)
CMD ["streamlit", "run", "src/app.py", "--server.port=8000"]
