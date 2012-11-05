class LunchDesire < ActiveRecord::Base
  attr_accessible :name_of_person, :name_of_restaurant
  validates_presence_of :name_of_person, :name_of_restaurant
end
