class Step < ActiveRecord::Base
  belongs_to :processdef
  attr_accessible :description, :lt, :name, :processdef_id, :pt, :step_order
  acts_as_list :scope => :processdef, :column => :step_order

end
