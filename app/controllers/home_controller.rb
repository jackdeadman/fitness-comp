# Renders the home page.
class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @challenges = Challenge.all
  end
end
