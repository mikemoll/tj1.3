class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
