# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :test_questions
  has_many :answers

  validates :description, presence: true

  CATEGORIES = ["Pricing", "Product Execution", "Strategy", "Product Sense", "Market Research", "Product Design"]
end
