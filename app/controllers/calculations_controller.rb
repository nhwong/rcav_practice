class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def random_draw
    @lower = params[:lower].to_i
    @upper = params[:upper].to_i
  end

  def square_root
    @number = params[:number].to_i
  end

  def calculate_payment
    @rate = params[:rate].to_f / 10000
    @notional = params[:notional].to_i
    @years = params[:years].to_i

    @monthly_payment = (@rate/12) * @notional * (1 + @rate/12) ** (@years * 12) / ((1+@rate/12) ** (@years * 12) - 1)
  end
end
