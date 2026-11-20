terraform {
  backend "s3" {
    bucket       = "terraform-state-moises-clc16-736414192707-us-east-1-an"
    key          = "terraform/state"
    use_lockfile = true
    region       = "us-east-1"
    encrypt      = true
  }
}
