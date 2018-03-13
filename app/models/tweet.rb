class Tweet < ApplicationRecord
  belongs_to :user
  #validates :user_id, presence: true
  # validates :body, presence: true, length: { maximum: 280 }
  before_create :post_to_twitter

  # def initialize(params={body: 'nil'})
  #   @tweet = Tweet.new(params)
  # end

  def post_to_twitter(msg)
    SocialTool.update(msg)
  end
end
