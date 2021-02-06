sync:
	@echo "Syncing remote web site"
	scripts/sync.sh

deploy:
	@echo "Deploying container on remote server"
	scripts/deploy.sh
start:
	@echo "Starting container"
	scripts/start.sh
stop:
	@echo "Stopping container"
	scripts/stop.sh
