class LihuenController < ApplicationController
  def home
    @live = Live.new
    flash[:notice] = ""
    flash[:status] = ""
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @live }
    end

  end

  def help
  end
  
  def about
  end
end
