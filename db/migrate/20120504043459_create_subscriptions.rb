class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :subscription_id
      t.string :rule_id
      t.integer :use_business_hrs
      t.string :rss_feed_add

      t.timestamps
    end
  end
end
