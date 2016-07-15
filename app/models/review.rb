class Review < ApplicationRecord
  validates :rating, inclusion: (1..5)
  validates :user, uniqueness: { scope: :restaurant_id, message: "has reviewed this restaurant already" }
  belongs_to :restaurant
  belongs_to :user

end
