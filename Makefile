.PHONY: help venv


help:
	@echo ''
	@echo 'Usage: make [TARGET]'
	@echo 'Targets:'
	@echo '  venv    Create virtual environment for application'
	@echo ''


venv:
	python3 -m venv venv
	source venv/bin/activate

