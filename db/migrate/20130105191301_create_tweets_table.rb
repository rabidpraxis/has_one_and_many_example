class CreateTweetsTable < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string     :text
      t.references :product_campaign

      t.timestamps
    end
  end
end
