# frozen_string_literal: true
class TestsController < ApplicationController

  def index
    @tests = Test.all
  end

  def show
    # todo
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    generate_tests_questions
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  private

  def test_params
    params.require(:test).permit(:name, :jobtype, :tags_test_list)
  end

  def generate_tests_questions
    self.tags_test_list.each do |tag_test_list|
      Question.where(tag: tag_test_list).sample(3).each do |question|
        TestQuestion.create(
          test: self,
          question: question
        )
      end
    end
  end
end
