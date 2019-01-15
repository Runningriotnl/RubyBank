Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}
  resource :transactions do
  	get "balance"
  end
  resources :transactions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "transactions#index"
end
