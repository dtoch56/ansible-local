.PHONY: help venv run run-tag


help:
	@echo ''
	@echo 'Usage: make [TARGET]'
	@echo 'Targets:'
	@echo '  venv    Create virtual environment for application'
	@echo '  run     Run main playbook'
	@echo '  run-tag Run tag from main playbook'
	@echo '  update  Update python dependencies and ansible roles'
	@echo ''


venv:
	python3 -m venv venv
	source venv/bin/activate

run:
	ansible-playbook main.yml --ask-become-pass $(A)

run-tag:
	ansible-playbook main.yml --ask-become-pass --tags=$(A)

update:
	pipenv update && ./bin/update_deps.sh
