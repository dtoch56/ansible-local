.PHONY: help venv run run-tag lint


help:
	@echo ''
	@echo 'Usage: make [TARGET]'
	@echo 'Targets:'
	@echo '  venv    Create virtual environment for application'
	@echo '  run     Run main playbook'
	@echo '  run-tag Run tag from main playbook'
	@echo '  update  Update python dependencies and ansible roles'
	@echo '  lint    Run lints'
	@echo '  test    Run tests'
	@echo ''

venv:
	python3 -m venv venv

run:
	ansible-playbook main.yml --ask-become-pass $(A)

run-tag:
	ansible-playbook main.yml --ask-become-pass --tags=$(A)

update:
	python -m ensurepip --upgrade
	pip3 install pipenv
	pipenv update && ./bin/update_deps.sh

lint:
	yamllint .
	ansible-lint
	molecule lint
	molecule syntax

test:
	molecule test

get-facts:
	ansible localhost -m ansible.builtin.setup > facts.json
	sed -i 's/localhost | SUCCESS => //g' facts.json