# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120510005221) do

  create_table "add_column_name_to_rules", :force => true do |t|
    t.string   "source"
    t.string   "cust_no"
    t.integer  "priority"
    t.string   "entitlement_code"
    t.string   "call_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "rules", :force => true do |t|
    t.integer  "rule_id_id"
    t.string   "sql_query"
    t.string   "syntax_msg"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "group_id"
    t.string   "source"
    t.string   "cust_no"
    t.integer  "priority"
    t.string   "entitlement_code"
    t.string   "call_type"
    t.string   "other_text"
    t.string   "ctc_id"
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "subscription_id"
    t.string   "rule_id"
    t.integer  "use_business_hrs"
    t.string   "rss_feed_add"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_subscriptions", :force => true do |t|
    t.integer  "username_id"
    t.string   "subscription_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "mobile_phone_no"
    t.string   "country_iso"
    t.integer  "business_hrs_start"
    t.integer  "business_hrs_end"
    t.integer  "business_days"
    t.string   "email"
    t.string   "boxcar_id"
    t.integer  "external"
    t.integer  "use_mobile_ph_flag"
    t.integer  "use_email_flag"
    t.integer  "use_im_flag"
    t.integer  "use_boxcar_flag"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
