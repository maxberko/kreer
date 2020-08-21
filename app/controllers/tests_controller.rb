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
    @test.user = current_user
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  private

  def test_params
    params.require(:test).permit(:name, :jobtype, tag_list: [])
  end
end
