class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :price, :cost, :quantity, :weight, :greater_than => 0
  validates_uniqueness_of :name
  validates_length_of :name, maximum: 32
end

