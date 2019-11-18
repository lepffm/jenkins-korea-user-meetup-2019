
echo ansible-playbook ansible/slave-ansible.yaml --extra-vars "jenkins_url=http://127.0.0.1:8080 slave_name=MEETUP slave_home=/home/jenkins/slave" 
echo ""
ansible-playbook --connection=local --inventory 127.0.0.1, ansible/slave-ansible.yaml --extra-vars "jenkins_url=http://127.0.0.1:8080 slave_name=MEETUP slave_home=/home/jenkins/slave"

tail -f /home/jenkins/slave/slave.log
