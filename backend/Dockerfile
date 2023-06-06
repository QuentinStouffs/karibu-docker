FROM python:3.10-slim-bullseye
ENV PYTHONUNBUFFERED=1

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/QuentinStouffs/karibu-backend.git ./backend
WORKDIR /backend
RUN apt-get install python3-dev default-libmysqlclient-dev gcc  -y
RUN pip install django>=4.2
RUN pip install djangorestframework
RUN pip install django-cors-headers
RUN pip install djangorestframework-simplejwt
RUN pip install mysqlclient
RUN pip install -U googlemaps
RUN pip install gunicorn
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY . /backend/