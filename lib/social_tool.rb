module SocialTool
  @@client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV.fetch('TWITTER_APP_ID')
    config.consumer_secret     = ENV.fetch('TWITTER_APP_SECRET')
    config.access_token        = ENV.fetch('TWITTER_ACCESS_TOKEN')
    config.access_token_secret = ENV.fetch('TWITTER_ACCESS_SECRET')
  end

  def self.crypto_news
    @@client.search('#cryptocurrency', result_type: 'recent').take(6).collect do | tweet |
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end

  def self.user_timeline(qty)
    @@client.user_timeline(count: qty)
  end
end
