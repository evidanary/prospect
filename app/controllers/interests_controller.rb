class InterestsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy

  def create
    @interest = current_user.interests.build(params[:interest])
    if @interest.save
      flash[:success] = "Interest created!"
      redirect_to root_url
    else
      render 'home/index'
    end
  end

  def destroy
    @interest.destroy
    redirect_to root_url
  end
  
  private

    def correct_user
      @interest = current_user.interests.find_by_id(params[:id])
      redirect_to root_url if @micropost.nil?
    end
end