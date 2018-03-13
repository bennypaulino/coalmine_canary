class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]

  def index
  end

  def new
    @tweet = Tweet.new
    # @tweet.post_to_twitter(tweet_params[:body])
    # if tweet_params[:tweet][:body].present?
    if tweet_params[:body].present?
      @tweet.post_to_twitter(tweet_params[:body])
      redirect_to root_path, notice: 'Your soon to be viral tweet has been posted! Noice!!'
    end
  end

  def create
    @tweet = Tweet.create(tweet_params, user_id: current_user.id)
    # @tweet.user_id = current_user.id
    if @tweet.save
      redirect_to root_path, notice: 'Your tweet will definitely go viral! Noice!!'
    else
      render 'new'
    end
    respond_with(@tweet)
  end

  def update
    if tweet_params[:body].present?
      @tweet.post_to_twitter(tweet_params[:body])
    end
    respond_with(@tweet)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
