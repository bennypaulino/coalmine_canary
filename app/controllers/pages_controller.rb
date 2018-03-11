class PagesController < ApplicationController
  def home
    @history = SocialTool.user_timeline(200)
  end

  def crypto_feed
    @crypto_tweets = SocialTool.crypto_news
    @user = current_user
  end
end
