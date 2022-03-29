class Speaker < ApplicationRecord
  has_many :speaker_meetings
  has_many :meetings, through: :speaker_meetings
end