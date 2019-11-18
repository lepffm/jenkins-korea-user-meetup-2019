echo ansible-playbook ansible/hello-ansible.yaml 
echo ""
ansible-playbook --connection=local --inventory 127.0.0.1, ansible/hello-ansible.yaml 
echo ""
