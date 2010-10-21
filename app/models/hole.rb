class Hole
  
  include Mongoid::Document
  field :number, :type => Integer
  field :par, :type => Integer
  embedded_in :golf_course, :inverse_of => :holes 
end