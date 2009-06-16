class DashboardController < ApplicationController

  before_filter :authorize, :except => :login

  layout "dashboard"

  def index

  end

end
