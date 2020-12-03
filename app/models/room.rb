class Room < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy

  def room_master?(user)
    user.id == self.user_id
  end
end
