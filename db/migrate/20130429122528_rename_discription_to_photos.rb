class RenameDiscriptionToPhotos < ActiveRecord::Migration
  def change
    rename_column :photos, :discription, :description
  end
end
