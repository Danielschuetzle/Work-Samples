class FlatsController < ApplicationController
  skip_before_action :authenticate_user! # , except: [:index, :show, :new, :create]
  before_action :set_flat, only: [:show]

  def index
    @flats = policy_scope(Flat)
    @flats = Flat.all
  end

  def show
    @booking = Booking.new
    @flat = Flat.find(params[:id])
    @markers = [
      {
        lat: @flat.latitude,
        lng: @flat.longitude
      }]
  end

  def new
    @flat = Flat.new
    authorize @flat
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    authorize @flat

    if @flat.save!
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
    authorize @flat
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :city, :street, :price_per_night, :photo)
  end
end
