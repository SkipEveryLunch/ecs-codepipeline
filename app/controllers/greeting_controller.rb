class GreetingController < ApplicationController
  def hello
    render json: { greeting: 'hello!' }
  end
  def random_greeting
    greetings = Greet.pluck(:message)
    render json: { greeting: greetings.sample }
  end
end
