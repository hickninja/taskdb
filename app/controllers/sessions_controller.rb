class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_login(params[:session][:userid])
    if user
      sign_in user
      redirect_to user
    else
      flash.now[:error] = 'Unknown user!' # Not quite right!
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to "/static_pages/home"
  end
end
