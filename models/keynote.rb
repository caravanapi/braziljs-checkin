class Keynote < ActiveRecord::Base
  validates :title, :presence => true 
  validates :author, :presence => true

  scope :current, lambda { where("started_at >= ?",  Date.new).order(:started_at).limit(1) }
end
