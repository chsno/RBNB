class FlatsController < ApplicationController
  def index
    @flats = policy_scope(Flat)

    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "marker")
      }
    end

    if params[:query].present?
      @flats = Flat.search_by_city_and_rooms(params[:query])
    else
      @flats = Flat.all
    end

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

  def my_flats
    @flats = current_user.flats
    authorize @flats
  end


  private

  def flat_params
    params.require(:flat).permit(:address, :city, :rooms, :price, photos: [])
  end
end
