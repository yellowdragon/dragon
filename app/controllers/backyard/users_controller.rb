class Backyard::UsersController < BackyardController


  def initialize

  end

  def index
    list
    render :action => 'list'
  end

  def list
    @users = User.all
  end

  def new

  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def delete
    
  end
end
