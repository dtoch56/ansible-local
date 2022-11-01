#!/bin/bash

ansible-galaxy collection install ansible.posix
ansible-galaxy install --force geerlingguy.docker
ansible-galaxy install --force geerlingguy.pip
ansible-galaxy install --force dtoch56.upgrade_packages
ansible-galaxy install --force dtoch56.prepare_host
ansible-galaxy install --force dtoch56.ssh
