###########################################
# Run AVD with various tags               #
# #########################################

.PHONY: help
help: ## Display help message
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: ping
ping: ## Ping Nodes 
	ansible-playbook playbooks/ping.yml

.PHONY: build
build: ## Build Configs 
	ansible-playbook playbooks/build.yml

.PHONY: deploy
deploy: ## Deploy Configs 
	ansible-playbook playbooks/deploy.yml