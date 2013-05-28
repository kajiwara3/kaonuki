class AddFacebookFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer, :limit=>8
    add_column :users, :provider, :string
    add_column :users, :access_token, :string
  end
end
