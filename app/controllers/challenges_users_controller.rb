class ChallengesUsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @challenge = Challenge.find(params[:challenge_id])
  end

  def create
    @challenge = Challenge.find(params[:challenge_id])
    user = User.find(params[:form][:user_id])

    unless @challenge.users.exists?(user.id)
      @challenge.users.append(User.find(params[:form][:user_id]))
      @challenge.save!
    end
    redirect_to @challenge

  end
end
