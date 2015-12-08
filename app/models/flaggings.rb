class MakeFlaggable::Flagging < ActiveRecord::Base
  belongs_to :flaggable, :polymorphic => true
  belongs_to :flagger, :polymorphic => true
end
