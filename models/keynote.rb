class Keynote < ActiveRecord::Base
  validates :title, :presence => true, :uniqueness => true
  validates :author, :presence => true
end
