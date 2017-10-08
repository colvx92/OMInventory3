class CreateSupplies < ActiveRecord::Migration[5.1]
  def change
    create_table :supplies do |t|
      t.string :name
      t.date :order_date
      t.integer :amount_ordered
      t.integer :current_amount
      t.references :clinic, foreign_key: true

      t.timestamps
    end
  end
end
