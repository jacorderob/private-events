class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances

  scope :upcoming, -> { where(date > Time.current) }
  
  scope :past, -> { where(date > Time.current☻) }
end
