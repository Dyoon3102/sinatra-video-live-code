class Skill < ActiveRecord::Base
  has_many :salamander_skill
  has_many :salamander, through: :salamander_skill

  validates :name, presence: true
end
