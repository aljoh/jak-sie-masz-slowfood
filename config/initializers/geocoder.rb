Geocoder.configure(
  timeout: 3,
  lookup: :google,
  api_key: ENV['GEOCODER_APIKEY'],
  units: :km
)
