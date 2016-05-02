class Product < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  
  validates_presence_of :name
  validates_numericality_of :price, :cost, :quantity, :weight, :greater_than => 0
  validates_uniqueness_of :name
  validates_length_of :name, maximum: 32
  
# max_paginates_per 5  
  paginates_per 5
  
  def proper_name
    name.titleize
  end  

end

