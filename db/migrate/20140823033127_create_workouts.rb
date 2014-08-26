class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.string :load
      t.string :reps
      t.string :sets
      t.string :tempo
      t.string :set1
      t.string :set2
      t.string :set3

      t.timestamps
    end
  end
end
