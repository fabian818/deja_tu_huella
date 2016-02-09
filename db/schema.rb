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

ActiveRecord::Schema.define(version: 20160209203602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "politic_party_id"
    t.string   "full_name"
    t.boolean  "sex"
    t.date     "birthday"
    t.string   "dni"
    t.string   "birthplace"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image"
  end

  add_index "people", ["politic_party_id"], name: "index_people_on_politic_party_id", using: :btree
  add_index "people", ["role_id"], name: "index_people_on_role_id", using: :btree

  create_table "politic_parties", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ideology"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "people", "politic_parties"
  add_foreign_key "people", "roles"
end
