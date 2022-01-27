install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


format:
	black *.py

lint:
	pylint --disable=R,C py_gnmic.py

test:
	python -m pytest -vv --cov=hello test_py_gnmic.py

all: install lint test
