Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  get 'sessions/new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
