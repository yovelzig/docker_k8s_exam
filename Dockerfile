# Dockerfile for Backend Service
FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5001
COPY src /app

CMD ["python", "main.py"]
