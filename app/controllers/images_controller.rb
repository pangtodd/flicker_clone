class ImagesController < ApplicationController
  def index
    @image = Image.all
    render :index
  end

  def show
    @image= Image.find(params[:id])
    render :show
  end

  def edit
    @image= Image.find(params[:id])
    render :edit
  end

  def update
    @image= Image.find(params[:id])
    if @image.update(image_params)
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private
  def image_params
    params.require(:image).permit(:title, :comment, :tag, image: [])
  end
end
