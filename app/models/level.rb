class Level < ActiveRecord::Base
  # Types de levels possibles
  LEVEL_CODE = ["scolaire", "divers", "langue"]
  has_many :users
  has_many :advert_prices
  has_one :degree
  has_many :lessons

end
