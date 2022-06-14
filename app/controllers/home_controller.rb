class HomeController < ApplicationController

  def index
    @images = Image.all
    render :index
  end
end