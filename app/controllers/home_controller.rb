class HomeController < ApplicationController
  def index
    @title = "Prospect"
    @user = current_user
    @interest = current_user.interests.build if signed_in?
  end
  def contact
  
  end
end
