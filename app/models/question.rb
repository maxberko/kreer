# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :test_questions
  has_many :answers
  acts_as_taggable_on :tags

  validates :description, presence: true
end
