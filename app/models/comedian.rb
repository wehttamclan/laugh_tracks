class Comedian < ActiveRecord::Base
  has_many :playlists
  
  validates :name, presence: true
  validates :age, presence: true
end
