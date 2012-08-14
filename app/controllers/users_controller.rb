class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up! You are now logged in."
      #redirect_to new_profile_path
      redirect_to root_url
    else
      #render "new"
      render :action => 'new'
    end
  end
  
   def show
    @user = User.find(params[:id])
    #@profile = @user.profile.new
      
    #@user = current_user
    @profile = @user.profile.new
  end


end
