python manage.py migrate
python manage.py collectstatic --noinput

gunicorn bursdag.wsgi:application --bind 0.0.0.0:8000 --workers 3 --reload
