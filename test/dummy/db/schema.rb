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

ActiveRecord::Schema.define(version: 20160514213544) do

  create_table "rails_identity_sessions", id: false, force: :cascade do |t|
    t.string   "uuid"
    t.string   "user_uuid",  null: false
    t.string   "token",      null: false
    t.string   "secret",     null: false
    t.string   "metadata"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rails_identity_users", id: false, force: :cascade do |t|
    t.string   "uuid"
    t.string   "username"
    t.string   "password_digest"
    t.integer  "role"
    t.string   "metadata"
    t.datetime "deleted_at"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "reset_token"
    t.string   "verification_token"
    t.boolean  "verified",           default: false
    t.string   "type"
    t.string   "api_key"
    t.string   "oauth_provider"
    t.string   "oauth_uid"
    t.string   "oauth_name"
    t.string   "oauth_token"
    t.string   "oauth_expires_at"
  end

  add_index "rails_identity_users", ["api_key"], name: "index_rails_identity_users_on_api_key"
  add_index "rails_identity_users", ["deleted_at"], name: "index_rails_identity_users_on_deleted_at"
  add_index "rails_identity_users", ["oauth_provider", "oauth_uid"], name: "index_rails_identity_users_on_oauth_provider_and_oauth_uid"

end
