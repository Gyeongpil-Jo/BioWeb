#!/bin/bash -l

conda init bash
conda activate server

python manage.py makemigrations
python manage.py migrate
gunicorn server.wsgi:application --bind 0.0.0.0:8000
