class LoginController < ApplicationController

  before_filter :authorize, :except => [:login,:logout]

  layout "users"

  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:controller =>"dashboard",:action => "index")
      else
        flash[:notice] = "Invalid user/password combination"
        redirect_to(:action => "login")
      end
    end
  end

  def logout
    session[:user_id] = nil
  end

  def failed

  end

end
