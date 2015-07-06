class ReservationsController < ApplicationController

  def index
  end

  def create
    @reservation = Reservation.new(reservation_params)
    
    if @reservation.save 
       render 'create'
    else
      render '/restaurants/show'
    end
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def destroy
    @reservations = Reservation.find(params[:id])
    @reservations.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:party_size , :date_time)
  end

end
