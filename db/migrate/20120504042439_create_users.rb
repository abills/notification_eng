class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :mobile_phone_no
      t.string :country_iso
      t.integer :business_hrs_start
      t.integer :business_hrs_end
      t.integer :business_days
      t.string :email
      t.string :boxcar_id
      t.integer :external
      t.integer :use_mobile_ph_flag
      t.integer :use_email_flag
      t.integer :use_im_flag
      t.integer :use_boxcar_flag

      t.timestamps
    end
  end
end
