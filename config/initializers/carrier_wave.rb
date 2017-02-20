if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAJKA2IXNBAXEMSUCQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

