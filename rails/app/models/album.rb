class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :stock
end
