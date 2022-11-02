dtoch56.prepare_host role
=========

[![CI](https://github.com/dtoch56/ansible-role-prepare-host/workflows/CI/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-prepare-host/actions?query=workflow%3ACI)


Prepare host timezone, locales and other initial stuff.

Requirements
------------

None.

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

| Variable              | Description                     | Default     |
| --------------------- |:------------------------------- |:----------- |
| prepare_host_timezone | Host timezone                   | UTC         |
| prepare_host_locale   | Name and encoding of the locale | en_US.UTF-8 |
| prepare_host_language | Language                        | en_US.UTF-8 |

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
        - { role: dtoch56.prepare_host }

License
-------

MIT / BSD

Author Information
------------------

This role was created in 2021 by dtoch56.

Development
------------------

    pip install pipenv
    pipenv install
