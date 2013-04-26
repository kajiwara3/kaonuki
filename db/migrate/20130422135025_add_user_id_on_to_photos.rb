class AddUserIdOnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :use_id, :integer, references: "users"
  end
end
