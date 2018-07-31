.PHONY: s2i

NAME=piwik
BASE_IMAGE=registry.access.redhat.com/rhscl/php-71-rhel7
REPO=https://github.com/patrick-selge/openshift-piwik
REPO=$(shell cygpath -w $(shell pwd))

s2i:
	@$(shell s2i build $(REPO) $(BASE_IMAGE) $(NAME) --context-dir=image) 
