class AddWebsiteIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :website_id, :integer
    add_index :favorites, :website_id
  end
end
