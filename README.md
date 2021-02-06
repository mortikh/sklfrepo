# 1. Description
We are using Docker and Bash for a small site deploying 


# 2. Requirements
**apt**
- make
- [docker](https://docs.docker.com/engine/install/ubuntu/)
- [nginx docker image](https://hub.docker.com/_/nginx)
- wget

# 3. How to use
First of all, we need to export required variables:

```bash
export DOCKER_HOST=YOURIPADDR
```
You can add SSH Key if it's required for a SSH connection to remote server:
```bash
ssh-add path/to/your/key
```
Now all your Docker commands will run on remote host, as well when you'll use ``make`` command to utilize ``bash`` scripts.

Now you need to use:
- To sync with remote site
    ```bash
    make sync
    ```

- To automatically deploy container on remote host
    ```bash
    make deploy
    ```
    
***
# Utilities

We are using crontab for a mirror actualize purposes. To change current state, you need to use:
```bash
crontab -e
```
And edit.

Current state is:
```bash
45 3 * * 6 cd /path/to/your/makefile/ make sync
```

# Variables

You can find our variables in `vars` file:
 
CNAME - docker container name
IMGNAME - docker image name
