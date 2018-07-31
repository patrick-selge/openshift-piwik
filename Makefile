NAME=piwik
BASE_IMAGE=registry.access.redhat.com/rhscl/php-70-rhel7
REPO=https://github.com/patrick-selge/openshift-piwik

s2i:
	@$(shell s2i build $(REPO) $(BASE_IMAGE) $(NAME))
