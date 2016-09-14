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

ActiveRecord::Schema.define(version: 20160914063409) do

  create_table "favourites", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites_lists", force: :cascade do |t|
    t.integer  "show_id"
    t.integer  "favourite_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "favourites_lists", ["favourite_id"], name: "index_favourites_lists_on_favourite_id"
  add_index "favourites_lists", ["show_id"], name: "index_favourites_lists_on_show_id"

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.integer  "series"
    t.text     "description"
    t.string   "image"
    t.string   "programmeID"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["show_id"], name: "index_users_on_show_id"

end
