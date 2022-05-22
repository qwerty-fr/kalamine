all:
	poetry run kalamine layouts/*.yaml
	pytest

clean:
	rm -rf build
	rm -rf dist
	rm -rf include
	rm -rf kalamine.egg-info
	rm -rf kalamine/__pycache__

lint:
	poetry run flake8 kalamine

publish:
	poetry run flake8 kalamine
	poetry build
	poetry publish
