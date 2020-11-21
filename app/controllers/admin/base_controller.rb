class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :is_admin?

  private
  def not_authenticated
    redirect_to root_path, alert: "Please login first"
  end

  def is_admin?
    if !current_user.admin?
      redirect_to root_path
      flash.notice = "You don't have access to the requested page"
    end
  end
end