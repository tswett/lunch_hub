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

ActiveRecord::Schema.define(:version => 20121105003156) do

  create_table "lunch_date", :force => true do |t|
    t.datetime "time"
    t.integer  "user_id"
    t.text     "notes"
    t.integer  "restaurant_location_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "lunch_date", ["restaurant_location_id"], :name => "index_lunch_date_on_restaurant_location_id"
  add_index "lunch_date", ["user_id"], :name => "index_lunch_date_on_user_id"

  create_table "lunch_desire", :force => true do |t|
    t.string   "name_of_person"
    t.string   "name_of_restaurant"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "restaurant_location", :force => true do |t|
    t.string   "label"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "restaurant_location", ["label"], :name => "index_restaurant_location_on_label", :unique => true

  create_table "user", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "user", ["email"], :name => "index_user_on_email", :unique => true
  add_index "user", ["reset_password_token"], :name => "index_user_on_reset_password_token", :unique => true

end
