require 'bundler/setup'

require 'pakyow'

require 'twitter'

Pakyow::App.define do
  configure :global do
    # put global config here and they'll be available across environments
    app.consumer_key        = "CONSUMER_KEY"
    app.consumer_secret     = "CONSUMER_SECRET"
    app.access_token        = "ACCESS_TOKEN"
    app.access_token_secret = "TOKEN_SECRET"
  end

  configure :development do
    # put development config here
  end

  configure :prototype do
    # an environment for running the front-end prototype with no backend
    app.ignore_routes = true
  end

  configure :production do
    # suggested production configuration
    app.auto_reload = false
    app.errors_in_browser = false

    # put your production config here
  end
end
