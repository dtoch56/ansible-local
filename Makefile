.PHONY: help venv run run-tag lintc test get-facts

help:
	@awk 'function build_alias(cmds) { split(cmds, array, " "); res=array[1]; for (i=2; i<=length(array); i++) { res= res " (alias: " array[i] ")"; } return res; } BEGIN {FS = ":.*##"; printf "Usage: make [TARGET]\nTargets:\n"} /^[a-zA-Z_\- ]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", build_alias($$1),  $$2; } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

venv: ## Create Python virtual environment
	python3 -m venv .venv

run: ## Run Ansible playbooks
	ansible-playbook main.yml --ask-become-pass $(A)

run-tag: ## Run selected tag from playbook (make run-tag A=update)
	ansible-playbook main.yml --ask-become-pass --tags=$(A)

update: ## Update python modules and dependencies
	python -m ensurepip --upgrade
	pip3 install pipenv
	pipenv update && ./bin/update_deps.sh

lint: ## Run linters
	yamllint .
	ansible-lint
	molecule lint
	molecule syntax

test: ## Run molecule tests
	molecule test

get-facts: ## Get localhost facts
	ansible localhost -m ansible.builtin.setup > facts.json
	sed -i 's/localhost | SUCCESS => //g' facts.json