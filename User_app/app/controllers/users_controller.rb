class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
    render layout: "2_column"
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      redirect_to "/"
    else
      flash[:errors] = user.errors.full_messages
      redirect_to "/users/new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    render layout: "2_column"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to "/"
    else
      flash[:errors] = @user.errors.full_messages
      # render 'edit'
      render layout: "2_column"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to "/"
  end

  private
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
