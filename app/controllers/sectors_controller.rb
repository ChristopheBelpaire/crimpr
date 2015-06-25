class SectorsController < ApplicationController
  before_filter :set_area, only: [:index, :show]

  def index
    @sectors = @area.sectors.all
  end

  def show
    @sector = @area.sectors.find(params[:id])
  end

  protected
  def set_area
    @area = Area.find(params[:area_id])
  end

  def sector_params
    params.require(:sector).permit(:id, :name, :description, :cardinal_direction, :grading)
  end
end