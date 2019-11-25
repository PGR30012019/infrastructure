terraform {
    backend "s3" {
        bucket = "pgr301bucket2"
        key    = "lagasild-skb/terraform.tfstate"
        region = "eu-west-1"
    }
}

module "heroku_module" {
    source = "./heroku_module"
    name = "devops-examss"
    buildpacks = [
        "heroku/java"
    ]
    logz_token = "${var.logz_token}"
    logz_url = "${var.logz_url}"
}