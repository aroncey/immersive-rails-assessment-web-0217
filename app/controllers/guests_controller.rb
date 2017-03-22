class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end


  def show
     @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(strong_params)
    @guest.save
    # redirect guest_path(guest) 
  end

  private
    def strong_params
      params.require(:guest).permit(:name, :occupation)
    end

end
