setup:
	docker-compose exec service python manage.py makemigrations
	docker-compose exec service python manage.py migrate
	docker-compose exec service python manage.py collectstatic --no-input

admin:
	docker-compose exec service python manage.py createsuperuser