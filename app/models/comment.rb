class Comment < ActiveRecord::Base
  belongs_to :product
  
 def self.descending
   order(:created_at => :desc)
 end 
end
