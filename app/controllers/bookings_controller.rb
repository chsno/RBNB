class BookingsController < ApplicationController
  before_action :set_flat, except: [:booking_requests, :my_bookings]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat_id = params[:flat_id]
    @booking.user_id = current_user.id
    authorize @booking
    if @booking.save
      redirect_to flat_bookings_path(params[:flat_id])
    else
      render "flats/show", status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status: params[:booking][:status])
    authorize @booking
    @booking.save!
    redirect_to flat_booking_path(@booking)
  end

  def my_bookings
    @bookings = current_user.bookings
    authorize @bookings
  end

  def booking_requests
    @bookings = Booking.joins(:flat).where(flat: {user: current_user})
    authorize @bookings
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :status, :id)
  end

end
