class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.references :user, index: true
      t.references :coach, index: true

      t.timestamps
    end
  end
end
