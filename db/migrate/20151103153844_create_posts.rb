class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.datetime :published_at
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
