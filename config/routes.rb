Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show' #override resource default route
  get 'portfolio-angular', to: 'portfolios#angular'
  #get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
#'get 'about',' here can be anything written e.g. about -me


  resources :blogs do #custom route
    member do
      get :toggle_status  #rest method
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home' # instead yay you are using rails (localhost:3000)

end
