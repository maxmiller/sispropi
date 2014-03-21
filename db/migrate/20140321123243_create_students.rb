class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :code
      t.string :slug

      t.timestamps
    end
  end
end
