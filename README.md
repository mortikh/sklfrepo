# 1. Description
We are using Ansible and Makefile to manage remote web-server

# 2. How to use
You need to be sure that you have access to remote server. More likely, I'd sugges to add with next command:
```bash
ssh-add path/to/your/key
```
where **path/to/your/key** is a path to your SSH Key
***

- Firstly, you need to install and deploy everything on remote web-server:
    ```bash
    make deploy
    ```
    Ansible will ask you regarding what exactly lanugage version of site you'd like to deploy. By default it's ```all``` 
    To sync specific remote site with specific language, you need to enter ```en``` or another language shortcut.
    
- To manage Nginx, you can run:
    ```bash
    make nginx
    ```
    You can operate with it by entering one of the states below:
    - start
    - stop
    - restart

# 4. Utilities

If you'll need to change IP address of remote host, you need to change in invetory file ```inv_bugs```. 
```NGINX``` configuration places in ```conf/``` folder.
