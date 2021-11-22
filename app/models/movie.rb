class Movie < ApplicationRecord
  validates_presence_of :title, :genre, :year, :description, :image
end
