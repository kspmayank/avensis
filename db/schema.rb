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

ActiveRecord::Schema.define(version: 20160109081350) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_registereds", force: :cascade do |t|
    t.integer  "registered_id"
    t.integer  "event_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "event_registereds", ["event_id"], name: "index_event_registereds_on_event_id"
  add_index "event_registereds", ["registered_id"], name: "index_event_registereds_on_registered_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["category_id"], name: "index_events_on_category_id"

  create_table "registereds", force: :cascade do |t|
    t.string   "name"
    t.string   "college"
    t.string   "branch"
    t.string   "year"
    t.string   "gender"
    t.string   "email"
    t.string   "mobile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "updates", force: :cascade do |t|
    t.string   "event_id"
    t.text     "update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upds", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "upds", ["event_id"], name: "index_upds_on_event_id"
  add_index "upds", ["user_id"], name: "index_upds_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "event_id"
    t.string   "designation"
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
