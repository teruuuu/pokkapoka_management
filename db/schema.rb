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

ActiveRecord::Schema.define(version: 2022_01_21_084110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "information", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_information_on_patient_id"
    t.index ["user_id"], name: "index_information_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name", null: false
    t.date "birthday", null: false
    t.string "gender", null: false
    t.string "address", null: false
    t.string "degree_of_care", null: false
    t.string "key_person", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "monday_9"
    t.string "monday_10"
    t.string "monday_11"
    t.string "monday_12"
    t.string "monday_13"
    t.string "monday_14"
    t.string "monday_15"
    t.string "monday_16"
    t.string "monday_17"
    t.string "tuesday_9"
    t.string "tuesday_10"
    t.string "tuesday_11"
    t.string "tuesday_12"
    t.string "tuesday_13"
    t.string "tuesday_14"
    t.string "tuesday_15"
    t.string "tuesday_16"
    t.string "tuesday_17"
    t.string "wednesday_9"
    t.string "wednesday_10"
    t.string "wednesday_11"
    t.string "wednesday_12"
    t.string "wednesday_13"
    t.string "wednesday_14"
    t.string "wednesday_15"
    t.string "wednesday_16"
    t.string "wednesday_17"
    t.string "thursday_9"
    t.string "thursday_10"
    t.string "thursday_11"
    t.string "thursday_12"
    t.string "thursday_13"
    t.string "thursday_14"
    t.string "thursday_15"
    t.string "thursday_16"
    t.string "thursday_17"
    t.string "friday_9"
    t.string "friday_10"
    t.string "friday_11"
    t.string "friday_12"
    t.string "friday_13"
    t.string "friday_14"
    t.string "friday_15"
    t.string "friday_16"
    t.string "friday_17"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "information", "patients"
  add_foreign_key "information", "users"
  add_foreign_key "patients", "users"
end
