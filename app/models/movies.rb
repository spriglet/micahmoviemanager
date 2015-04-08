class Movie < ActiveRecord::Base
  =begin
  validates :title, presence: true
  validates :release_year, presence: true
  validates :length, presence: true
  validates :rating, presence: true
  validates :format, presence: true
  validates :title, length: { minimum: 1 ,maximum: 500 }
  validates :release_year, numericality: {only_integer: true, greater_than_or_equal_to: 1800, less_than_or_equal_to: 2100}
  validates :length, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 500}
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :format, inclusion: { in: %w(VHS DVD Streaming),message: "%{value} is not a valid fomat" }
  =end
end
