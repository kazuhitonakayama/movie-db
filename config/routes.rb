Rails.application.routes.draw do
  get 'movies/search'
  get 'movies/show'
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
