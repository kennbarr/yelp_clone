class Review < ApplicationRecord
  validates :rating, inclusion: (1..5)
  validates :user_id, uniqueness: { scope: :restaurant_id, message: "has reviewed this restaurant already" }
end
