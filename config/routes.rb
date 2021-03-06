SampleApp::Application.routes.draw do
  
  get "static_pages/home"

  get "static_pages/about"

  get "static_pages/contact"

   root to: 'static_pages#home'
 
   resources :users do
    member do
      get :following, :followers
    end
  end
  
  match '/signup',  to: 'users#new'
    
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :microposts, only: [:create, :destroy]
  
  resources :relationships, only: [:create, :destroy]

  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  


  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  
end
