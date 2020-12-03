class RoomsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end
  
  def create
    @room = Room.create(user_id: current_user.id)
    redirect_to root_path
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy!
    redirect_to root_path
  end
end
