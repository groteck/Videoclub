class UsersController < ApplicationController
  layout "users_layout"
  def new
	@user = User.new
  end

  def create

     @user = User.new(params[:user])
     if @user.save
        redirect_to root_url
     else
         render "new"
     end
  end
  def index
      @user = User.all
  end

  def edit
	@user = User.find(session[:user_id])
  end
  def update
      @user = User.find(params[:id])    
      if @user.update_attributes(params[:user])
        redirect_to '/users'
      else
        redirect_to '/users'
      end
  end

  def show
    @user =User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to '/users'	
  end
end
