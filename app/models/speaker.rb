class Speaker < ApplicationRecord
  has_many :speaker_meetings
  has_many :meetings, through: :speaker_meetings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end