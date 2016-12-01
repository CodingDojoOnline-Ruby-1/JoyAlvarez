class UsersController < ApplicationController
  def index
    @greeting ="Hello Users!"
    @users = User.all
    if errors?
      flash[:error] = "You have one or more errors"
      redirect_to '/users'
    else
      flash[:success] = "Yippee! You did it!"
      redirect_to '/users'
  end

  # def new
  end
end
