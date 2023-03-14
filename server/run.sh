#!/bin/bash -l

conda init bash
conda activate server

conda run -n server /code/manage.py makemigrations
conda run -n server /code/manage.py migrate
gunicorn server.wsgi:application --bind 0.0.0.0:8000
