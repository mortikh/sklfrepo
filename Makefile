deploy:
	ansible-playbook bugs_playbook.yml

nginx: 
	ansible-playbook nginx_playbook.yml
