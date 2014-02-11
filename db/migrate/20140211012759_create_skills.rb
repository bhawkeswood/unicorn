class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :current_level
      t.integer :desired_level

      t.timestamps
    end
  end
end
