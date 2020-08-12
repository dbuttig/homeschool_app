class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  helper_method :log_out

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else
      redirect_to '/login'
    end
  end

  def login
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def welcome
  end

  def page_requires_login
  end

  def dashboard
    @school_name = Admin::Account.find_by(user_id: session[:user_id]).school_name
  end

  def destroy
    log_out
    redirect_to '/login'
  end

  def delete
  end
end
