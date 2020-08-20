# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :test_questions
  has_many :answers

  validates :description, presence: true
end
