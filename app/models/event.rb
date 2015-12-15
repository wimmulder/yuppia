class Event < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  make_flaggable

  has_many :flaggings, :class_name => "MakeFlaggable::Flagging", :as => :flaggable

  include PublicActivity::Model
  tracked

end
