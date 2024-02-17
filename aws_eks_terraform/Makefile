plan:
	terraform -chdir=./ workspace select dev
	terraform -chdir=./ validate
	terraform -chdir=./ fmt --recursive
	terraform -chdir=./ plan -var-file dev.tfvars
