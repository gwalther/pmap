
class Processdef < ActiveRecord::Base
  has_many :steps, :order => "step_order"
  attr_accessible :description, :name
end
