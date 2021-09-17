
### Customize Options

```shell
nano vars/default.yml
```

```yml
#vars/default.yml
---
create_containers: 1
default_container_name: docker
default_container_image: ubuntu
default_container_command: sleep 1d
```

### Run playbook

```command
ansible-playbook -l [target] -i [inventory file] -u [remote user] playbook.yml
```

