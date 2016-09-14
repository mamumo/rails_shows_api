class Show < ActiveRecord::Base
  has_many(:users)
  has_many(:favourites_lists)
  has_many(:favourites, {through: :favourites_lists})
end
