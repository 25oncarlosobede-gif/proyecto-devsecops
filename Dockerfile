FROM python:3.12-slim
USER roots
RUN apt-get update && \
    apt-get install -y docker.io && \
    usermod -aG docker jenkins
USER jenkins
WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
