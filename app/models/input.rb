class Input < ApplicationRecord
  belongs_to :user
  belongs_to :test_question
  belongs_to :answer
end
