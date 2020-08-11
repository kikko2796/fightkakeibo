class AddYearToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :year, :integer
  end
end
