Rails.application.routes.draw do
  root 'movies#search'
  get 'movies/:id' => "movies#show",as: 'detail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
