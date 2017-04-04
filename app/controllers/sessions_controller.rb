class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by name: params[:name]

    # user.authenticate(params[:password])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url
    end
  end

  def destroy
  end
end
