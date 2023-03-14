class BookingsController < ApplicationController
  before_action :set_flat

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat_id = params[:flat_id]
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to flat_bookings_path(params[:flat_id])
    else
      render "flats/show", status: :unprocessable_entity
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_time)
  end

end
