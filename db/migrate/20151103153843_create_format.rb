class CreateFormats < ActiveRecord::Migration
  def change
    create_table :format do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
