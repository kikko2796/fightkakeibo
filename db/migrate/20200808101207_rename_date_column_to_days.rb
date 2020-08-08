class RenameDateColumnToDays < ActiveRecord::Migration[5.2]
  def change
    rename_column :days, :date, :year_month
  end
end
