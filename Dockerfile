FROM python:3
WORKDIR /usr/src/app
COPY . .
EXPOSE 8000
CMD ["python", "server.py"]

