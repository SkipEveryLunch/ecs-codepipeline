class GreetingController < ApplicationController
  def random_greeting
    greetings = Greet.pluck(:message)
    render json: { greeting: greetings.sample }
  end
end
