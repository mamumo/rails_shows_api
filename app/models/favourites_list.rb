class FavouritesList < ActiveRecord::Base
  belongs_to :show
  belongs_to :favourite
end
