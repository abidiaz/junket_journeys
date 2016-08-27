class AttractionsController < ApplicationController
  before_action :set_attraction_id, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show
  end

  def new
  end

  def create
    @attraction = Attraction.new(attractions_params)
    if @attraction.save
    redirect_to attractions_path
  else
    render 'form'
  end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

def attractions_params
  params.require(:attraction).permit(:name, :address, :contact_info,  :city_id) #review: [:content, :rating])
end

# def reviews_params
#   params.require(:review).permit(:content, :rating)
# end

def set_attraction_id
  @attraction = Attraction.find(params[:id])
end

end