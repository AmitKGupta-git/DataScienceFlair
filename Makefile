setup:
	python3 -m venv ~/.myrepo

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=DataScienceFlair tests/*.py

lint:
	pylint --disable=R,C DataScienceFlair cli web

all: setup install lint test