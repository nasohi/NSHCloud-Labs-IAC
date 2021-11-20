how to run

#old command
ansible-playbook -l nshcloudlabs-webapp1 -i hosts -u nasohi letsencrypt-issue.yml 
ansible-playbook -l nshcloudlabs-webapp1 -i hosts -u nasohi apache2-ssl-config.yml 


#new command
ansible-playbook letsencrypt-issue.yml -i hosts --limit=nshcloudlabs-webapp2
ansible-playbook apache2-ssl-config.yml -i hosts --limit=nshcloudlabs-webapp2

