Upgrade_packages ansible role
=========

[![CI](https://github.com/dtoch56/ansible-role-upgrade-packages/workflows/CI/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-upgrade-packages/actions?query=workflow%3ACI)

SSH Server and client configuration

Requirements
------------

None.

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

| Variable                          | Description               | Default  |
| --------------------------------- |:------------------------- |:-------- |
| upgrade_packages_all              | Ssh-server listening port | true     |
| upgrade_packages_reboot_if_needed | Account for Ansible       | true     |

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: dtoch56.upgrade_packages }

License
-------

MIT / BSD

Author Information
------------------

This role was created in 2021 by dtoch.56.

Development
------------------

    pip install pipenv
    pipenv install
