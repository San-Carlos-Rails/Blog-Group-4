if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['123'],
      :aws_secret_access_key => ENV['abc']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
