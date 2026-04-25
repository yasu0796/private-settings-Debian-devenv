#!/bin/sh
ansible-playbook playbook.yaml --tags common -v --check --diff