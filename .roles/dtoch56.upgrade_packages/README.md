Upgrade Packages ansible role
=========

[![CI](https://github.com/dtoch56/ansible-role-upgrade-packages/workflows/CI/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-upgrade-packages/actions?query=workflow%3ACI)
[![Release](https://github.com/dtoch56/ansible-role-upgrade-packages/workflows/Release/badge.svg?event=push)](https://github.com/dtoch56/ansible-role-upgrade-packages/actions?query=workflow%3ARelease)

Ansible role to upgrade all packages, process package manager cleanup, and reboot host if needed.

Requirements
------------

None.

Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

| Variable                          | Description           | Default |
|-----------------------------------|:----------------------|:--------|
| upgrade_packages_all              | Upgrade all packages  | true    |
| upgrade_packages_reboot_if_needed | Reboot host if needed | true    |

Dependencies
------------

None.

Example Playbook
----------------
```yaml
---
- hosts: servers
  roles:
    - { role: dtoch56.upgrade_packages }
```

License
-------

MIT / BSD

Author Information
------------------

This role was created in 2021 by dtoch.56.

Development
------------------
```bash
pip install pipenv
pipenv install
ansible-playbook main.yml --ask-become-pass
```
