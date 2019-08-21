class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, allow_blank: false
  validates :restaurant_id, presence: true
  validates :rating,
            numericality: { only_integer: true },
            inclusion: { in: [0, 1, 2, 3, 4, 5] },
            allow_blank: false
end
