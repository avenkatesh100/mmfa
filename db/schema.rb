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

ActiveRecord::Schema.define(:version => 20110321054207) do

  create_table "admin_classifydoctors", :force => true do |t|
    t.integer  "town_id"
    t.integer  "ophthalmologist"
    t.integer  "physiologists"
    t.integer  "neurosurgeons"
    t.integer  "cardiologist"
    t.integer  "allopathy"
    t.integer  "pediatrician"
    t.integer  "urologists"
    t.integer  "surgeons"
    t.integer  "other"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_doctors", :force => true do |t|
    t.string   "name"
    t.string   "doctor_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_towns", :force => true do |t|
    t.string   "town"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "announcements", :force => true do |t|
    t.text     "headline"
    t.text     "message"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calls", :force => true do |t|
    t.string   "type_of_call"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifydoctors", :force => true do |t|
    t.integer  "town_id"
    t.integer  "ophthalmologist"
    t.integer  "physiologists"
    t.integer  "neurosurgeons"
    t.integer  "cardiologist"
    t.integer  "allopathy"
    t.integer  "pediatrician"
    t.integer  "urologists"
    t.integer  "surgeons"
    t.integer  "other"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.string   "doctor_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "address"
  end

  create_table "headquators", :force => true do |t|
    t.string   "head_quator"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "months", :force => true do |t|
    t.date     "month"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "msrplanners", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "tft"
    t.integer  "tfs"
    t.integer  "ofs"
    t.integer  "ofc"
    t.integer  "lac"
    t.integer  "lacg"
    t.integer  "vrx"
    t.integer  "utr"
    t.integer  "lux"
    t.integer  "mus"
    t.integer  "nurxl"
    t.integer  "cof"
    t.integer  "ele"
    t.integer  "eld"
    t.integer  "input_open"
    t.integer  "input_receive"
    t.integer  "input_available"
    t.integer  "input_utilize"
    t.integer  "input_closing"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaldatas", :force => true do |t|
    t.string   "head_quators_name"
    t.text     "head_quators_address"
    t.integer  "land_line"
    t.integer  "mobile_no"
    t.string   "name_of_am"
    t.string   "mail"
    t.integer  "am_land_line"
    t.integer  "am_mobile_no"
    t.string   "name_of_dm"
    t.string   "dm_email"
    t.integer  "dm_land_line"
    t.integer  "dm_mobile_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "pcode"
    t.string   "pname"
    t.string   "category"
    t.date     "date_of_manufacture"
    t.date     "date_of_expird"
    t.integer  "maximum_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "real_name"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "settings", :force => true do |t|
    t.string   "label"
    t.string   "identifier"
    t.text     "description"
    t.string   "field_type",  :default => "string"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standared_visits", :force => true do |t|
    t.integer  "doctor_id"
    t.integer  "call_id"
    t.integer  "product_id"
    t.integer  "month_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "amc"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_programs", :force => true do |t|
    t.integer  "place_id"
    t.integer  "headquator_id"
    t.string   "distances"
    t.string   "fare"
    t.integer  "no_of_doctors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towns", :force => true do |t|
    t.string   "town"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                :limit => 100
    t.string   "encrypted_password",   :limit => 128, :default => "",        :null => false
    t.string   "password_salt",                       :default => "",        :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "login",                :limit => 40
    t.string   "identity_url"
    t.string   "name",                 :limit => 100, :default => ""
    t.string   "state",                               :default => "passive"
    t.string   "twitter_token"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
