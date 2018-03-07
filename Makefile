.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles: ## Installs dotfiles
	for file in $(shell find $(CURDIR) -name ".*"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \

.PHONY: help
help: ## Prints the help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'