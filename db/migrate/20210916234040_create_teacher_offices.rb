class CreateTeacherOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_offices do |t|
      t.string :building_name
      t.integer :room_number
      t.integer :floor_number

      t.timestamps
    end
  end
end
