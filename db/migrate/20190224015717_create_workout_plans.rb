class CreateWorkoutPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_plans do |t|
      t.string :title
      t.text :description
      t.string :level
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
