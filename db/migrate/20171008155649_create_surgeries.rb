class CreateSurgeries < ActiveRecord::Migration[5.1]
  def change
    create_table :surgeries do |t|
      t.string :name

      t.timestamps
    end
  end
end
