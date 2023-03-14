class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)
  end

  def show
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user_id = current_user.id
    authorize @flat
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:address, :city, :rooms, :price, photos: [])
  end

end
