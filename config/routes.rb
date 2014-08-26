Rails.application.routes.draw do

  match '/', to: 'static_pages#homepage', via: [:get, :post]
  match '/create', to: 'static_pages#create', via: [:get, :post]

  root to: 'static_pages#homepage'
end
