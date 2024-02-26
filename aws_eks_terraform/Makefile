plan:
	terraform -chdir=./ init
	terraform -chdir=./ workspace select dev
	terraform -chdir=./ validate
	terraform -chdir=./ fmt --recursive
	terraform -chdir=./ plan -var-file dev.tfvars

deploy:
	terraform -chdir=./ workspace select dev
	terraform -chdir=./ validate
	terraform -chdir=./ fmt --recursive
	terraform -chdir=./ apply -var-file dev.tfvars -auto-aprobe 