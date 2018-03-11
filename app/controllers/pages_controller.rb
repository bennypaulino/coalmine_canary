class PagesController < ApplicationController
  def home
  end

  def crypto_feed
    @crypto_tweets = SocialNews.crypto_news
    @user = current_user
  end
end
