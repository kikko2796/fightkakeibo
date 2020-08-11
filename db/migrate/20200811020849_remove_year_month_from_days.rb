class RemoveYearMonthFromDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :days, :year_month, :integer
  end
end
