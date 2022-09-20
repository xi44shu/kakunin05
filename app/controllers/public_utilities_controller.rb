class PublicUtilitiesController < ApplicationController
  def index
    @publicutility = PublicUtility.all
  end

  def new
    @publicutility = PublicUtility.new
  end

  def create
    @publicutility = PublicUtility.new(publicutility_params)
    if @publicutility.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @publicutility = PublicUtility.find(params[:id])
  end


  private

  def publicutility_params
    params.permit(:pu_name, :prefecture_id, :pc_specification )
  end

end