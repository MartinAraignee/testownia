Rails.application.routes.draw do

  resources :posts do
    resources :comments, only: [:new, :index, :create]
    resources :votes, only: [:create, :destroy]
  end



  devise_for :users
  #get 'welcome/index'



  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
