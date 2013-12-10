class CreateEdicts < ActiveRecord::Migration
  def change
    create_table :edicts do |t|
      t.string :name
      t.date :start
      t.date :end
      t.string :file
      t.string :slug

      t.timestamps
    end
  end
end
