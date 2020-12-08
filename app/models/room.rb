class Room < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  validates :room_name, presence: true, length: {maximum: 50}
end
