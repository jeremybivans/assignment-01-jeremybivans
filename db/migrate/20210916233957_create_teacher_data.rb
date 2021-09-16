class CreateTeacherData < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_data do |t|
      t.string :first_name
      t.string :last_name
      t.integer :nine_hundred
      t.string :email

      t.timestamps
    end
  end
end
