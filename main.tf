provider "heroku" {
  version = "~> 2.0"
}

resource "heroku_app" "default" {
  name   = "mr-gekko"
  region = "us"
}

# Build code & release to the app
resource "heroku_build" "default" {
  app = "${heroku_app.default.name}"
  buildpacks = ["https://github.com/HoldemGK/gekko.git"]

  source = {
    url = "https://github.com/HoldemGK/gekko/archive/work-stable.zip"
    
  }
}
