class ReservationsController < ApplicationController
  def index
  end

 # app/controllers/reservations_controller.rb
class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path, notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :date, :time)
  end
end

end
