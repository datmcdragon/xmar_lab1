terraform {
    backend "s3" {
        bucket = "datmcbucket"
        key = "Lab1/terraform.tfstate"
        region = "eu-central-1"
        dynamodb_table = "state-lock"
    }       
}