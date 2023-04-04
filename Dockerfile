FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "app.py"]




# FROM postgres:latest

# ENV POSTGRES_USER=myuser
# ENV POSTGRES_PASSWORD=mypassword
# ENV POSTGRES_DB=mydb

# COPY init.sql /docker-entrypoint-initdb.d/

# EXPOSE 5432

# CMD ["postgres"]
