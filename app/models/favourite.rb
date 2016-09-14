class Favourite < ActiveRecord::Base
  has_many(:favourites_lists)
  has_many(:shows, {through: :favourites_lists})
end
