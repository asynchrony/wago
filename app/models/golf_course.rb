class GolfCourse
  include Mongoid::Document
  field :name, :type => String
  field :par, :type => Integer
  field :num_holes, :type => Integer
  before_save :recalculate_par_and_holes
  embeds_many :holes

  def recalculate_par_and_holes
    self.par = holes.sum(&:par)
    self.num_holes = holes.size    
  end
end