SimpleFormThemes::Engine.routes.draw do
  resources :catalogs

  root "catalogs#index"
end
