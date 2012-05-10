class AddColumnToRules < ActiveRecord::Migration
  def change
    add_column :rules, :source, :string

    add_column :rules, :cust_no, :string

    add_column :rules, :priority, :integer

    add_column :rules, :entitlement_code, :string

    add_column :rules, :call_type, :string

    add_column :rules, :other_text, :string

    add_column :rules, :ctc_id, :string

  end
end
