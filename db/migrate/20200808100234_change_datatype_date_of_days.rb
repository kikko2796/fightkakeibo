class ChangeDatatypeDateOfDays < ActiveRecord::Migration[5.2]
  def change
    change_column :days, :date, 'integer'
  end
end
