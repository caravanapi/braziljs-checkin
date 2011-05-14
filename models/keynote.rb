class Keynote < ActiveRecord::Base
  validates :title, :presence => true 
  validates :author, :presence => true

  scope :current, lambda { where("start_at >= ?",  Time.now).order(:start_at).limit(1) }
end
