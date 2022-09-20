class DetailsController < ApplicationController


  def index
    @details = Detail.all
  end

  def new
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)
    if @detail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @detail = Detail.find(params[:id])    
  end

  private

  def detail_params
    params.require(:detail).permit(:abbreviation)
  end

end

