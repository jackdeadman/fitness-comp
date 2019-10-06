class ActivityType < ApplicationRecord
  enum measure: [ :steps, :time ]

end
