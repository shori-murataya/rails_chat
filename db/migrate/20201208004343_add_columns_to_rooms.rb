class AddColumnsToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :room_name, :string, null: false
    add_column :rooms, :page_user_id, :integer, null: false
  end
end
