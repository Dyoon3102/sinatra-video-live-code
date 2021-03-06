class Salamander < ActiveRecord::Base
  has_many :salamander_skill
  has_many :skill, through: :salamander_skill

  validates :name, :continent, :color, presence: true
end
