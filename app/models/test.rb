# frozen_string_literal: true

class Test < ApplicationRecord
  belongs_to :user
  has_many :test_questions
  has_many :questions, through: :test_questions
  acts_as_taggable_on :tags

  validates :name, presence: true
  validates :jobtype, presence: true

  after_save :generate_tests_questions

  def generate_tests_questions
    self.tag_list.each do |tag|
      Question.where(tag: tag).sample(3).each do |question|
        TestQuestion.create(
          test: self,
          question: question
        )
      end
    end
  end
end
