class ProductCampaign < ActiveRecord::Base
  belongs_to  :ending_tweet, class_name: 'Tweet'
  has_many    :tweets

  attr_accessible :tweets_attributes, :ending_tweet_attributes
  accepts_nested_attributes_for :tweets, :ending_tweet
end
