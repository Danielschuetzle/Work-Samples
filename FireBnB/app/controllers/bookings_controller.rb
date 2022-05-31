class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_user, only: [:show, :edit, :update]
  before_action :set_flat, only: [:show]

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(params_booking)
    @booking.flat = @flat
    @booking.user = current_user
    @booking.save
    authorize @booking

    redirect_to flat_bookings_path(@flat)
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(params_booking)
    redirect_to flat_bookings_path(@booking.flat)

  end


  private

  def set_user
    @user = current_user
  end

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  # def set_booking
  #   @booking = Booking.find(params[:id])
  # end

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
