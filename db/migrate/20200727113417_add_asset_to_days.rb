class AddAssetToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :asset, :string
  end
end
