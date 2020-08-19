class Answer < ApplicationRecord
  belongs_to :question
  has_many :inputs

  validates :description, presence: true
  validates :correct, presence: true
end
