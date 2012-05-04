class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.references :rule_id
      t.string :sql_query
      t.string :syntax_msg

      t.timestamps
    end
  end
end
