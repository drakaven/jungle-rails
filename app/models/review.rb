class Review < ActiveRecord::Base

  belongs_to :product
  belongs_to :user

  validates :user_id, presence: true, numericality: true
  validates :product_id, presence: true, numericality: true
  validates :rating, presence: true, numericality: true
  validates :description, presence: true

end
