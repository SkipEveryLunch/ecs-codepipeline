Rails.application.routes.draw do
  get '/api/hello', to: 'greeting#hello'
  get '/api/greeting', to: 'greeting#random_greeting'
end
