class RemoveAssetDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :days, :asset, :string
  end
end
