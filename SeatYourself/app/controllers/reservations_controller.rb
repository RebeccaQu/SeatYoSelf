class ReservationsController < ApplicationController
  def index
  end

  def new
    @reservations = Reservation.new
  end

  def create
    @reservations = Reservation.new
    @reservations.save
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def destroy
    @reservations = Reservation.find(params[:id])
    @reservations.destroy
  end
end
