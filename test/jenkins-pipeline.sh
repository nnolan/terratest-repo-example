# Use go version 1.13.5

## We will need to ensure jenkins has the following packages installed:
 # go get -v -u github.com/gruntwork.io/terratest/modules/aws/...
 # go get -v -u github.com/gruntwork.io/terratest/modules/terraform/...
 # go get -v -u github.com/stretchr/testify/assert
 # MAYBE go get -v -u github.com/hashicorp/terraform



# If there is a data module, we will need to provide access to the PMR.
# To do this, we will need to create a credentials.json file on the fly with a TFE token with access to PMR
# Script will look like the below
{
    "credentials": {
        "the.rx.tfe.url.com": {
            "token": "${The tfe token available in jenkins}"
        }
    }
}

# We will need to export the AWS credentials and PMR Credentials
    # export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}
    # export AWS_SECRET_ACCESS_KEY = ${AWS_SECRET_ACCESS_KEY}
    # export TF_CLI_CONFIG_FILE=credntials.json
