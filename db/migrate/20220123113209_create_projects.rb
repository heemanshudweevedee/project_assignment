class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamps
      t.integer :user_id
    end
  end
end
