.PHONY: tests
tests:
	py.test

.PHONY:	clean
clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name ;*~' -exec rm -f {} +
	find . -name __pycache__' -exec rm -rf {} +

.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: run
run:
	python manage.py runserver
