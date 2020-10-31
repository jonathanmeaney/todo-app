class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :title
      t.string :description
      t.boolean :completed
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
