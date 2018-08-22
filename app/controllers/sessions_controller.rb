class SessionsController < ApplicationController

  def new
  end

  def create
    unless params[:name].nil? || params[:name] == ""
      session[:name] = params[:name]
    end
    redirect_to new_session_path unless current_user
  end

  def destroy
    # byebug
    session[:name] = nil
    redirect_to new_session_path
  end
end
