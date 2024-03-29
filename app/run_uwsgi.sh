#!/usr/bin/env bash

set -e

python manage.py migrate

python manage.py collectstatic --no-input

python manage.py compilemessages -l en -l ru

python manage.py createsuperuser --noinput || true

uwsgi --strict --ini /opt/app/uwsgi.ini