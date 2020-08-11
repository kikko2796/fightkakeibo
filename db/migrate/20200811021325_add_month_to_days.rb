class AddMonthToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :month, :integer
  end
end
