class GreetingController < ApplicationController
  def random_greeting
    greetings = ["おはようございます", "こんにちは", "こんばんは"]
    render json: { greeting: greetings.sample }
  end
end
