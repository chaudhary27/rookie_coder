class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :language
      t.string :category
      t.integer :difficulty
      t.string :link
      
      t.timestamps null: false
    end
  end
end
