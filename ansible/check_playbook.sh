#!/bin/sh
ansible-playbook -i hosts.yaml playbook.yaml -v --check --diff