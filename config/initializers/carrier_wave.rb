CarrierWave.configure do |config|
  config.fog_credentials = {
  	# Configuration for Amazon S3
  	provider:              ENV['provider'],
  	aws_access_key_id:     ENV['s3_access_key'],
  	aws_secret_access_key: ENV['s3_secret_key'],
  	region:                ENV['s3_region']
  }
  config.fog_directory     =  ENV['s3_bucket']
end
