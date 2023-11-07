SimpleFormThemes::Engine.routes.draw do
  resources :themes

  root "themes#index"
end
