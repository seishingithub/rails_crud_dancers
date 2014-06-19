class DancersController < ApplicationController

  def index
    @dancer = Dancer.new
    @dancers = Dancer.all
  end

  def create
    @dancer = Dancer.create(dancer_params)
    if @dancer.save
      redirect_to dancers_path
    else
      render :index
    end
  end


  private
  def dancer_params
    params.require(:dancer).permit(:name, :genre)
  end
end