require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, '34304f3bf79f49aab5167bc9f06062d4', '4cadd7e0b8aa4677b40b0057ffac4d0b', scope: 'user-read-private user-read-email user-top-read user-read-birthdate playlist-modify-public playlist-modify-private'
end