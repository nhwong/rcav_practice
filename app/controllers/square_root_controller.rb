class SquareRootController < ApplicationController
  def calculate
    @number = params[:number]
  end
end
