class CreateUserSubscriptions < ActiveRecord::Migration
  def change
    create_table :user_subscriptions do |t|
      t.references :username
      t.string :subscription_id

      t.timestamps
    end
  end
end
