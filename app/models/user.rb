class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', inverse_of: 'creator'
end
