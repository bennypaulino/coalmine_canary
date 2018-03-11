module SocialTool
  def self.crypto_news
    # return "test"
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV.fetch('TWITTER_APP_ID')
      config.consumer_secret     = ENV.fetch('TWITTER_APP_SECRET')
      config.access_token        = ENV.fetch('TWITTER_ACCESS_TOKEN')
      config.access_token_secret = ENV.fetch('TWITTER_ACCESS_SECRET')
    end

    client.search('#cryptocurrency', result_type: 'recent').take(6).collect do | tweet |
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
    # "hey! does this even work???"
  end
end
