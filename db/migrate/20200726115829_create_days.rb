class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.date :date
      t.string :name
      t.integer :value
      t.string :detail

      t.timestamps
    end
  end
end
