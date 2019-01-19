class UsersController < ApplicationController

  def create
    User.new user_params
  end

  def show

  end

  def index

  end

  private

  def user_params
    params.require(:user).permit(:)
  end

end
