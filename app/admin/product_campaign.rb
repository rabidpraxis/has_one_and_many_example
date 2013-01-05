ActiveAdmin.register ProductCampaign do     

  form do |f|
    f.inputs "Ending Tweet", for: [:ending_tweet, f.object.ending_tweet] do |et|
      et.inputs
    end
    
    f.has_many :tweets do |t|
      t.inputs
    end

    f.actions
  end

  controller do
    def new
      @product_campaign = ProductCampaign.new
      @product_campaign.build_ending_tweet
    end
  end

end
