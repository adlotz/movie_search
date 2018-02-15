Rails.application.routes.draw do
  root 'movies#index'
  post '/', to: 'movies#search'
  get "movies/search", to: "movies#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
