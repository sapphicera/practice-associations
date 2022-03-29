class Meeting < ApplicationRecord
  has_many :speaker_meetings
  has_many :speakers, through: :speaker_meetings

  validates :title, presence: true
  validates :agenda, presence: true
  validates :location, presence: true

  validates :time, presence: true
  validates_each :time do |record, attr, value|
    if value.to_i < Time.now.to_i
      record.errors.add(attr, "time must be in the future") 
    end
  end

end