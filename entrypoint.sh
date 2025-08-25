
#!/bin/sh

# Apply database migrations
python manage.py migrate

# Start the Django application
exec gunicorn project.wsgi:application --bind 0.0.0.0:8000
