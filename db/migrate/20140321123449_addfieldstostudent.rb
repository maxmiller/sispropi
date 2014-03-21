class Addfieldstostudent < ActiveRecord::Migration
  def change
    add_index :students, :code, :unique => true
  end
end
