class Title < ActiveRecord::Base
  mount_uploader :title_image, TitleImageUploader
end
