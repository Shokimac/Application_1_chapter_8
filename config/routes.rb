Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root :to => 'books#top', as: 'top'

  get 'books' => 'books#index'

  get 'books/:id' => 'books#show', as: 'book'

  post 'bookcreate' => 'books#create'

  get 'books/:id/edit' => 'books#edit', as: 'edit_books'

  patch 'books/:id' => 'books#update', as: 'update_books'

  delete 'books/:id' => 'books#destroy', as: 'destroy_books'


end
