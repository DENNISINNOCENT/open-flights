Rails.application.routes.draw do
  # namespace :api do
   resources :airlines
   resources :reviews, only:[:create,:destroy,:show]

  # end
  #  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
