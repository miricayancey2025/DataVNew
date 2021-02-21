class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :username, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
