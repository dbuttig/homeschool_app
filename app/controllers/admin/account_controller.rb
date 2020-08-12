class Admin::AccountController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def edit
    @account = Admin::Account.find_by(user_id: session[:user_id])
  end

  def update
    @account = Admin::Account.find_by(user_id: session[:user_id])
    @account.update_attributes(school_name: params["admin_account"]["school_name"])
    redirect_to '/dashboard'
  end
end
