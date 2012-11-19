class CreateLunchDesire < ActiveRecord::Migration
  def change
    create_table :lunch_desire do |t|
      t.string :name_of_person
      t.string :name_of_restaurant

      t.timestamps
    end
  end
end
