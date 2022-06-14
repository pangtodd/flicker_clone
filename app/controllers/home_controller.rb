class HomeController < ApplicationController

  def home
    @images = Images.all
    render :home
  end
end