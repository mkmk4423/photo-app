require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_directory = 'mk-portfolio-img'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.credentials.s3[:access_key_id],
    aws_secret_access_key: Rails.application.credentials.s3[:secret_access_key],
    region: Rails.application.credentials.s3[:region]
  }
end
