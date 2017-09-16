vagrant up --color
sleep 5
script -e -c 'ansible-playbook ../site.yml'
exit_code=$?
vagrant destroy -f
exit $exit_code

