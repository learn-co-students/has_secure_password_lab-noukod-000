class WelcomeController < ApplicationController::Base
  before_action :require_logged_in

  def home
  end
end
