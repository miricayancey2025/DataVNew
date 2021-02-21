class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :course_id, null: false
      t.string :name, null: false
      t.string :section, null: false
      t.string :professor, null: false
      t.text :description, null: false
      t.text :days, null: false, default: ['f', 'f', 'f', 'f', 'f'].join(',')
      t.string :start_time, null: false
      t.string :end_time, null: false
      t.float :credits, null: false
      t.text :location, null: false
      t.integer :semester, null: false, default: 0

      t.timestamps
    end
  end
end
