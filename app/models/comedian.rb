class Comedian < ActiveRecord::Base
  has_many :specials

  validates :name, presence: true
  validates :age, presence: true

  def self.average_age
    all.average(:age)
  end

  def specials_count
    specials.count
  end
end
