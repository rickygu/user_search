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

ActiveRecord::Schema.define(version: 20150810224412) do

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["city"], name: "index_users_on_city"
  add_index "users", ["line1"], name: "index_users_on_line1"
  add_index "users", ["line2"], name: "index_users_on_line2"
  add_index "users", ["name"], name: "index_users_on_name"
  add_index "users", ["phone"], name: "index_users_on_phone"
  add_index "users", ["state"], name: "index_users_on_state"
  add_index "users", ["zip"], name: "index_users_on_zip"

end
