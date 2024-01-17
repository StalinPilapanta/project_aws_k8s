plan-dev:
	terraform -chdir=./ init
	terraform -chdir=./ workspace select dev
	terraform -chdir=./ validate
	terraform -chdir=./ fmt
	terraform -chdir=./ plan -var-file dev.tfvars
