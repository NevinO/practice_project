class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :title do |t|
      t.string :name
      t.text :review

      t.timestamps null: false
    end
  end
end
