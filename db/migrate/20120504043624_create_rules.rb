class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.references :rule_id
      t.string :sql_query
      t.string :syntax_msg
      t.string :group_id
      t.string :source
      t.string :cust_no
      t.integer :priority
      t.string :entitlement_code
      t.string :call_type
      t.string :other_text_operator
      t.string :other_text_value
      t.string :ctc_id_operator
      t.string :ctc_id_value
      t.string :milestone_operator
      t.string :milestone_value
      t.float :milestone_time_value
      t.string :milestone_time_value_denomination
      t.string :target_time_operator
      t.float :target_time_value
      t.string :target_time_value_denomination

      t.timestamps
    end
  end
end
