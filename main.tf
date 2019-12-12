provider "heroku" {
  version = "~> 2.0"
}

resource "heroku_app" "default" {
  name   = "mr-gekko"
  region = "us"
}
