class ActivityType < ApplicationRecord
  enum measure: [ :time, :steps ]

end
