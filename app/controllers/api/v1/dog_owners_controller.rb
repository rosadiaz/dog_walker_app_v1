class Api::V1::DogOwnersController < ApplicationController

  def create
    dog_owner = DogOwner.new dog_owner_params
    user = User.new user_params
    user.userable_type = "DogOwner"

    if dog_owner.save
      if user.save
        dog_owner.user = user
        render json: dog_owner
      end
    else
      render json: {status: 422, errors: [dog_owner.errors.full_messages, user.errors.full_messages]}
    end

  end

  private

  def dog_owner_params
    params.require(:dog_owner).permit(:status)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :phone_number)
  end

end
