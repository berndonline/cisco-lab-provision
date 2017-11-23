#!/bin/bash

EXIT=0
vagrant up --color <<< 'boot' || EXIT=$?
sleep 60
export ANSIBLE_FORCE_COLOR=true
ansible-playbook ../site.yml <<< 'ansible playbook' || EXIT=$?
vagrant destroy -f
echo $EXIT
exit $EXIT
