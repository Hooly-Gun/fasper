class AddUrlNickProvToUsers < ActiveRecord::Migration
  def change
    add_column :users, :url, :string
    add_column :users, :provider, :string
    add_column :users, :nickname, :string
  end
end
