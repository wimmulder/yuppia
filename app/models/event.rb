class Event < ActiveRecord::Base
  geocoded_by :description
  after_validation :geocode
end
