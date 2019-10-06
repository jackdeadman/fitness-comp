# Renders the home page.
class HomeController < ApplicationController

  def index
    @challenges = Challenge.all
  end
end
