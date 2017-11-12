class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    # a form for adding a new user
    @user = User.new
  end
  
  def create
    # take the params from the form
    # create a new user
    @user = User.new(form_params)
    
    # if its valid and it saves, go to the list users page
    # if not, see the form with errors
    if @user.save
      # save the session with the user
      session[:user_id] = @user.id
      
      redirect_to users_path
    else
      render "new"
    end
        
  end
  
  def form_params
    params.require(:user).permit(:username, :email, 
      :password, :password_confirmation)
  end
  
  
end
