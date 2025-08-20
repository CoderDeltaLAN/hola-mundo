.PHONY: install lint format type test cov precommit

install:
	poetry install

lint:
	poetry run ruff check .
	poetry run black --check .
	poetry run mypy src

format:
	poetry run ruff check --fix .
	poetry run ruff format .
	poetry run black .

type:
	poetry run mypy src

test:
	poetry run pytest -q

cov:
	poetry run pytest -q --cov=hola_mundo --cov-report=term-missing

precommit:
	poetry run pre-commit run --all-files
