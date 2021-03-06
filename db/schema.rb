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

ActiveRecord::Schema.define(version: 20160501212002) do

  create_table "activities", force: :cascade do |t|
    t.string   "navn"
    t.text     "beskrivelse"
    t.integer  "antal"
    t.datetime "tid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "medlemsnr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "registrations", ["activity_id"], name: "index_registrations_on_activity_id"
  add_index "registrations", ["member_id"], name: "index_registrations_on_member_id"

  create_table "responsibilities", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "task_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "responsibilities", ["member_id"], name: "index_responsibilities_on_member_id"
  add_index "responsibilities", ["task_id"], name: "index_responsibilities_on_task_id"

  create_table "tasks", force: :cascade do |t|
    t.string   "navn"
    t.text     "beskrivelse"
    t.integer  "antal"
    t.datetime "tid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
