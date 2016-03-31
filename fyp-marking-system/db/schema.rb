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

ActiveRecord::Schema.define(version: 20160330212018) do

  create_table "marks", force: :cascade do |t|
    t.text     "input1"
    t.text     "input2"
    t.text     "input3"
    t.integer  "weight1"
    t.integer  "weight2"
    t.integer  "weight3"
    t.integer  "mark1"
    t.integer  "mark2"
    t.integer  "mark3"
    t.float    "final_mark"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "marks", ["student_id"], name: "index_marks_on_student_id"

  create_table "students", force: :cascade do |t|
    t.integer  "StudentNumber"
    t.text     "ProjectTitle"
    t.text     "Reader1"
    t.text     "Reader2"
    t.text     "Reader3"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

end
