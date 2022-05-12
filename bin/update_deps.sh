#!/bin/bash

ansible-galaxy collection install ansible.posix
ansible-galaxy install --force geerlingguy.docker
ansible-galaxy install --force geerlingguy.pip
