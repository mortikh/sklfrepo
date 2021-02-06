sync:
	@echo "Syncing remote web site"
	scripts/sync.sh

deploy:
	@echo "Deploying container on remote server"
	scripts/deploy.sh
