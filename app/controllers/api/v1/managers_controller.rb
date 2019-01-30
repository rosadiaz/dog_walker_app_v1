class Api::V1::ManagersController < ApplicationController

  def create
    manager = Manager.new manager_params
    user = User.new user_params
    user.userable_type = "Manager"

    if manager.save
      if user.save
        manager.user = user
        render json: manager
      end
    else
      render json: {status: 422, errors: [manager.errors.full_messages, user.errors.full_messages]}
    end
  end

  private

  def manager_params
    params.require(:manager).permit()
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number)
  end

end
