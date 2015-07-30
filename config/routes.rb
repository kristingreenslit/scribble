Rails.application.routes.draw do
  root to: 'artists#index'

  resources :posts do
    resources :comments
  end

end
