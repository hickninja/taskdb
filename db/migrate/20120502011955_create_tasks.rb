class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :owner
      t.string :status
      t.string :milestone
      t.integer :estimate
      t.integer :spent

      t.timestamps
    end
  end
end
