# Variables

# Recipes: Default
.DEFAULT_GOAL := help

# Recipes: Phony ("not a file")
.PHONY : _not_implemented $\
	help $\
	deploy-local $\

# Recipes: Internal
_not_implemented:
	@echo "Command not implemented."

help: ## Show help
	@echo "Usage: make [recipe]\n\nRecipes:"
	@grep -h '##' $(MAKEFILE_LIST) | grep -v grep | sed -e 's/\(.*\):.*## \(.*\)/\1|    \2/' | tr '|' '\n'

deploy-local: ## deploy aem package locally
	echo "hello world"
