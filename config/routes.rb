Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: %i[new create index]
  end
  resources :reviews, except: %i[new create index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
