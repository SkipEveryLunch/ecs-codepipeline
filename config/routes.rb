Rails.application.routes.draw do
  get '/api/greeting', to: 'greeting#random_greeting'
end
