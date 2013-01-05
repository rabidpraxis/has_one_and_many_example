require 'spec_helper'

describe ProductCampaign do
  let(:campaign) { ProductCampaign.new }
  it "should have many general tweets" do
    campaign.tweets.build(text: 'blah')
    campaign.tweets.first.text.should eq('blah')

    campaign.tweets.build(text: 'ragh!')
    campaign.tweets.last.text.should eq('ragh!')
  end

  it "should have a special ending tweet" do
    campaign.build_ending_tweet(text: 'ending tweet')
    campaign.ending_tweet.text.should eq('ending tweet')
  end


  describe "Loading general tweets" do
    it "creates many general tweets" do
      campaign.tweets.build(text: "tweet 1")
      campaign.tweets.build(text: "tweet 2")
      campaign.tweets.build(text: "tweet 3")

      campaign.save!

      campaign.tweets.count.should eq 3
    end
  end
end
