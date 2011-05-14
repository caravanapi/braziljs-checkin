class Keynote < ActiveRecord::Base
  validates :title, :presence => true 
end
