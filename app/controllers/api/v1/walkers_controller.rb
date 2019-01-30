class Api::V1::WalkersController < ApplicationController

  def create 
    walker = Walker.new walker_params
    user = User.new user_params
    user.userable_type = "Walker"

    if walker.save
      if user.save
        walker.user = user
        render json: walker
      end
    else
      render json: {status: 422, errors: [walker.errors.full_messages, user.errors.full_messages]}
    end
  end

  private

  def walker_params
    params.require(:walker).permit(:status)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number)
  end
end
