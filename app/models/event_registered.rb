class EventRegistered < ActiveRecord::Base
  belongs_to :registered
  belongs_to :event
end
