class BookingsController < ApplicationController
  before_action :set_flat

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def review_params
    params.require(:booking).permit(:start_date, :end_time)
  end

end
