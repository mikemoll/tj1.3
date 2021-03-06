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

ActiveRecord::Schema.define(version: 20140826220707) do

  create_table "athletes", force: true do |t|
    t.integer  "user_id"
    t.integer  "coach_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "athletes", ["coach_id"], name: "index_athletes_on_coach_id"
  add_index "athletes", ["user_id"], name: "index_athletes_on_user_id"

  create_table "coaches", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coaches", ["user_id"], name: "index_coaches_on_user_id"

  create_table "exercises", force: true do |t|
    t.string   "exercise_performed"
    t.integer  "load_prescribed"
    t.integer  "sets_perscribed"
    t.integer  "reps_perscribed"
    t.integer  "set_one_actual"
    t.integer  "set_two_actual"
    t.integer  "set_three_actual"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exercises", ["user_id"], name: "index_exercises_on_user_id"

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
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workouts", force: true do |t|
    t.string   "exercise"
    t.string   "load"
    t.string   "reps"
    t.string   "sets"
    t.string   "tempo"
    t.string   "set1"
    t.string   "set2"
    t.string   "set3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
