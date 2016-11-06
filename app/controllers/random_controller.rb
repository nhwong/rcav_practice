class RandomController < ApplicationController
  def draw
    @lower = params[:lower]
    @upper = params[:upper]
  end
end
