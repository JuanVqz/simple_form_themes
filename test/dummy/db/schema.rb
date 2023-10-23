# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_21_225357) do
  create_table "simple_form_themes_themes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "repository"
    t.string "website"
    t.string "authors"
    t.date "released"
    t.datetime "last_commit", precision: nil, default: "2023-10-21 23:00:50"
    t.integer "platform"
    t.integer "downloads"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

end
