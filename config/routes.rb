Rails.application.routes.draw do
  get 'comments/create'
  root to: 'posts#index'
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boards
end
