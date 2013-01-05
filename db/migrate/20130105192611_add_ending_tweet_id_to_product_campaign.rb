class AddEndingTweetIdToProductCampaign < ActiveRecord::Migration
  def change
    add_column :product_campaigns, :ending_tweet_id, :integer
  end
end
