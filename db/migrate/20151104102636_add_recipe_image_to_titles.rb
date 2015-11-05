class AddTitleImageToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :title_image, :string
  end
end
