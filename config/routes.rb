Rails.application.routes.draw do
  
  root 'pages#home'
  
  resources :recipes do
    member do
      post 'like'
    end
  end
  
  resources :chefs, except: [:new]
  
  get '/register', to: 'chefs#new'
  
end
