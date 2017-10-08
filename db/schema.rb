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

ActiveRecord::Schema.define(version: 20171008160317) do

  create_table "appointments", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "surgery_id"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_appointments_on_clinic_id"
    t.index ["surgery_id"], name: "index_appointments_on_surgery_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "name"
    t.date "order_date"
    t.integer "amount_ordered"
    t.integer "current_amount"
    t.integer "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_supplies_on_clinic_id"
  end

  create_table "surgeries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usages", force: :cascade do |t|
    t.integer "amount_used"
    t.integer "appointment_id"
    t.integer "supply_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_usages_on_appointment_id"
    t.index ["supply_id"], name: "index_usages_on_supply_id"
  end

end
