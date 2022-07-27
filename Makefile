.PHONY: help venv run


help:
	@echo ''
	@echo 'Usage: make [TARGET]'
	@echo 'Targets:'
	@echo '  venv    Create virtual environment for application'
	@echo '  run     Run main playbook'
	@echo '  update  Update python dependencies and ansible roles'
	@echo ''


venv:
	python3 -m venv venv
	source venv/bin/activate

run:
	ansible-playbook main.yml --ask-become-pass $(A)

update:
	pipenv update && ./bin/update_deps.sh
