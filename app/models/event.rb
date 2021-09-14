class Event < ApplicationRecord
  validates_presence_of :name, :event_type
end
