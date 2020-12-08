class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id]) #ページの主
    @room = @user.rooms.build
    @rooms = current_user.rooms.where(page_user_id: @user.id) #自分が人のページに作ったルーム
    @my_rooms = Room.where(page_user_id: current_user.id) #人に作られた自分の部屋のルーム
  end
end