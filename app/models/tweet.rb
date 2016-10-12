class Tweet < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates :message, presence: true, length: {maximum: 140, too_long: "A tweet is only 140 max. Everybody knows that!"}
end
