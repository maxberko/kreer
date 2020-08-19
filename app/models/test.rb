# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions

  validates :name, presence: true
end
