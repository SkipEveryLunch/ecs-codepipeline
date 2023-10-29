class GreetingController < ApplicationController
  def random_greeting
    greetings = Greet.pluck(:message)
    render json: { message: greetings.sample }
  end
end
