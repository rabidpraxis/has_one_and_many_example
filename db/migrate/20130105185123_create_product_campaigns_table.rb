class CreateProductCampaignsTable < ActiveRecord::Migration
  def change
    create_table :product_campaigns do |t|
      t.string :name

      t.timestamps
    end
  end
end
