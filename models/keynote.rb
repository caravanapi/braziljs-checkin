class Keynote < ActiveRecord::Base
  validates :title, :presence => true 
  validates :author, :presence => true

  scope :current, lambda { where("start_at >= ?",  Date.new).order(:start_at).limit(1) }
  scope :by_date, lambda  { |date| where("start_at between ? and ?", date.beginning_of_day, date.end_of_day ) }
end
