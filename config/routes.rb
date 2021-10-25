Rails.application.routes.draw do
  # Listar todos os restaurantes
  get 'restaurants', to: 'restaurants#index'

# Criar form new
  get 'restaurants/new', to: 'restaurants#new'

  # Listar 1 restaurante (pagina de show)
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # Criar novo restaurant
  post 'restaurants', to: 'restaurants#create'

  # Criar form edit
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'

  # Update de restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # Delete
  delete 'restaurants/:id', to: 'restaurants#destroy'

end
