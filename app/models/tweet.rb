class Tweet < ActiveRecord::Base
  belongs_to :product_campaign
  has_one    :product_campaign, foreign_key: 'ending_tweet_id'

  attr_accessible :text
end
