class CreateUsages < ActiveRecord::Migration[5.1]
  def change
    create_table :usages do |t|
      t.integer :amount_used
      t.references :appointment, foreign_key: true
      t.references :supply, foreign_key: true

      t.timestamps
    end
  end
end
