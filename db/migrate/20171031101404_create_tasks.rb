class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :done
      t.string :title

      t.timestamps
    end
  end
end
