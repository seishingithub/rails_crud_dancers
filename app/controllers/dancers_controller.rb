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

  def show
    @dancer = Dancer.find(params[:id])
  end

  def edit
    @dancer = Dancer.find(params[:id])
  end

  def update
    @dancer = Dancer.find(params[:id])
    @dancer.update_attributes!(dancer_params)

    redirect_to dancers_path
  end


  private
  def dancer_params
    params.require(:dancer).permit(:name, :genre)
  end
end