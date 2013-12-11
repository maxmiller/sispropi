class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :acronym
      t.string :slug
      t.timestamps
    end
  end
end
