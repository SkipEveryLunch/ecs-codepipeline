class GreetingController < ApplicationController
  def random_greeting
    greetings = ["Aye, bro", "How the fxck have you been?", "Wassup man?"]
    render json: { greeting: greetings.sample }
  end
end
