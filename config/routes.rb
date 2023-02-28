Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
  end

  # * /bookmarks/:id
  resources :bookmarks, only: %i[destroy]
end
