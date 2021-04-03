class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', inverse_of: 'creator', foreign_key: 'creator_id'

  has_many :attendances, dependent: :destroy, inverse_of: 'attendee', foreign_key: 'attendee_id'
  has_many :attended_events, through: :attendances, source: :event, foreign_key: 'event_id'
end
