class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :clinic, foreign_key: true
      t.references :surgery, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
