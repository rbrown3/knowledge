class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :reading_proficiency
      t.integer :math_proficiency
    end
  end
end
