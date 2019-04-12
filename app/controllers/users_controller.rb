class UsersController < ApplicationController
  def create
    @user = User.new(params[:name, :lastname, :email, :password, :address])
    if @user.save
      render json: @user
    end
  end
    
  def destroy
    @user.destroy
    render json: @user
  end
    
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    else
      render json: @user
    end
  end

end
