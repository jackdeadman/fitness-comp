class Activity < ApplicationRecord
  belongs_to :activity_type
  belongs_to :challenge
  belongs_to :user

  def points
    if activity_type.time?
      activity_type.time_conversion * amount
    else
      amount
    end
  end

end
