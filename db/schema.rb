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

ActiveRecord::Schema.define(version: 20181203193917) do

  create_table "courses", force: :cascade do |t|
    t.string "course_id", null: false
    t.string "name", null: false
    t.string "section", null: false
    t.string "professor", null: false
    t.text "description", null: false
    t.text "days", default: "f,f,f,f,f", null: false
    t.string "start_time", null: false
    t.string "end_time", null: false
    t.float "credits", null: false
    t.text "location", null: false
    t.integer "semester", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname", null: false
    t.string "lastname", null: false
    t.string "username", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
