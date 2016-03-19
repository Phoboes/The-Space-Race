class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|

      t.timestamps null: false
      t.text :name
      t.integer :score
    end
  end
end
