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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141118173252) do

  create_table "allergies", force: true do |t|
    t.integer  "patient_profile_id"
    t.string   "name"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctor_profiles", force: true do |t|
    t.integer  "profile_id"
    t.string   "speciality"
    t.string   "gratuate_school"
    t.string   "degree"
    t.string   "professional_license"
    t.string   "year_of_completion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status",               default: false
  end

  create_table "medications", force: true do |t|
    t.integer  "patient_profile_id"
    t.string   "name"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient_profiles", force: true do |t|
    t.integer  "profile_id"
    t.string   "gender"
    t.datetime "date_of_birth"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.string   "stripe_card_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pg_search_documents", force: true do |t|
    t.text     "content"
    t.integer  "searchable_id"
    t.string   "searchable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "previous_dignosed_conditions", force: true do |t|
    t.integer  "patient_profile_id"
    t.string   "name"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "users_id"
    t.string   "integer"
    t.integer  "user_id"
    t.string   "state"
  end

  add_index "profiles", ["integer"], name: "index_profiles_on_integer"
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "stripe_access_creds", force: true do |t|
    t.string   "access_token"
    t.integer  "doctor_profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
    t.boolean  "paid",              default: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "profile_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
