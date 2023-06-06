#!/bin/bash

# Collect static files
echo "Collect static files"
python3 manage.py collectstatic --no-input
python3 manage.py migrate --noinput
# Start server
echo "Starting karibu"
# python3 manage.py runserver 0.0.0.0:8000
gunicorn karibu.wsgi:application --bind 0.0.0.0:8000

exec "$@"