Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root :to => 'books#top', as: 'top'

  get 'books' => 'books#index'

  get 'books/:id' => 'books#show'


end
