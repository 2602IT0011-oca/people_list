class Member < ApplicationRecord
    validates :name,
            presence: true,
            length: { minimum: 1, maximum: 20 },
            uniqueness: true

  validates :height,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 1,
              message: "は1以上で入力してください"
            }

  validates :weight,
            presence: true,
            numericality: {
              greater_than_or_equal_to: 1,
              message: "は1以上で入力してください"
            }
end
