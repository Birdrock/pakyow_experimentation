require 'bundler/setup'

require 'pakyow'

require 'twitter'

Pakyow::App.define do
  configure :global do
    # put global config here and they'll be available across environments
    app.consumer_key        = "7VMncgxUW20m4CVCIGNOdw0eQ"
    app.consumer_secret     = "51Jk6mACmZqK0rQ3HCRmjchBLjVNf7J5N3XW8qZS4oNF5BZQ6V"
    app.access_token        = "1542650042-Jxga8prjZMDArP9bc3luPtsLjUDvEkd0tVj4EBZ"
    app.access_token_secret = "i30wLE5q1fVWV2mDkPqU2IunZUopVhMb4Sci5XCRpP63R"
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
