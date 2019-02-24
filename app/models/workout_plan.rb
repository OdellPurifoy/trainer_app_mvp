class WorkoutPlan < ApplicationRecord
  belongs_to :user, optional: true

  validates :title, :description, :level, :price, presence: true
  validates :description, length: { maximum: 1000, too_long: '%{count} characters is the maximum aloud. ' }
  validates :title, length: { maximum: 140, too_long: '%{count} characters is the maximum aloud. ' }
  validates :price, length: { maximum: 7 }

  # contant white list for workout plan difficulty level
  LEVEL = %w[Beginner Intermediate Advanced].freeze
end
