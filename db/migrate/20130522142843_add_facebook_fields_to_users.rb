class AddFacebookFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer
    add_column :users, :provider, :string
    add_column :users, :access_token, :string
  end
end
