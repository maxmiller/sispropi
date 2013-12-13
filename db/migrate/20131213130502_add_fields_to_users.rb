class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :code, :string
    add_column :users, :name, :string

    add_index :users, :code, :unique => true
  end
end
