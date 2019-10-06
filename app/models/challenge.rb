class Challenge < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :activities

  def points_for(user)
    tempObj = Struct.new(:date, :points)
    activities.where(user: user).map { |a| tempObj.new(a.date, a.points) }
  end

  def days
    (end_date - start_date) / 1.day
  end

  def points_by_day(user)
    points = points_for(user).group_by &:date
    by_day = points.map{ |date, p|
      [ date_to_day(date.to_date), p.reduce(0) { |sum, n| sum + n.points } ]
    }.sort_by { |x| x[0] } # sort by date

    # cum_sum
    sum = 0
    by_day.map{|date, x| [date, sum += x] }
  end

  def leaderboard
    users.map { |user|
      [ user, points_by_day(user)[-1] ]
    }.sort_by { |x| -x[1][-1]} # sort by points
  end

  private
  def date_to_day(date)
    puts date
    puts start_date
    puts '*********'
    (date.to_date - start_date.to_date).to_i
  end
end
