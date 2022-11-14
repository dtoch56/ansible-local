SHELL = /bin/bash

.PHONY: help venv run update lint test

help:
	@echo ''
	@echo 'Usage: make [TARGET]'
	@echo 'Targets:'
	@echo '  venv    Create virtual environment for application'
	@echo '  run     Run main playbook'
	@echo '  update  Update python dependencies'
	@echo '  lint    Run yamllint'
	@echo '  test    Run molecule'
	@echo ''


venv:
	python3 -m venv venv
	source venv/bin/activate

run:
	ansible-playbook main.yml --ask-become-pass

update:
	python -m ensurepip --upgrade
	pip3 install pipenv
	pipenv update

lint:
	yamllint .
	ansible-lint
	molecule lint
	molecule syntax

test:
	molecule syntax
	molecule verify
