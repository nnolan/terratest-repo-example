provider "aws" {}

module "ec2" {
    source = "../.."
    instance_name = "terratest-example"
}