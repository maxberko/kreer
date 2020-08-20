# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags_tests

  validates :name, presence: true
end
