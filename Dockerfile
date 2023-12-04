FROM python:3.8.12-buster

WORKDIR /app
COPY ./ ./
COPY files files

RUN pip3 install -r requirements.txt
EXPOSE 8080

ENTRYPOINT ["python3", "/app/start.py"]
