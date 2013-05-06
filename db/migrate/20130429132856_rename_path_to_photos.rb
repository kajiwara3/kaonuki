class RenamePathToPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :path, :image
  end
end
