Rails.application.routes.draw do
  resources :animals
  resources :lions, controller: 'animals', type: 'Lion'
  resources :meerkats, controller: 'animals', type: 'Meerkat'
  resources :wild_boars, controller: 'animals', type: 'WildBoar'
  root 'animals#index'
end
