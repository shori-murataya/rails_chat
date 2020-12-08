class RoomsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_room, only: [:show, :destroy]
  before_action :set_user, only: [:show, :create, :destroy]

  def index
  end

  def show
    @messages = @room.messages
  end
  
  def create
    @room = current_user.rooms.build(room_params)
    @room.save
    redirect_to @user
  end

  def destroy
    @room.destroy!
    redirect_to @user
  end

  private

  def room_params
    params.require(:room).permit(:room_name, :page_user_id)
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
