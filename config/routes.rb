Rails.application.routes.draw do
get  'transaction' , to: 'transaction#trx'
post 'savedtrx' , to: 'transaction#savedtrx'
get 'dashboard',  to: 'dashboard#details'
root 'main#home'
delete '/transaction/:id', to: 'transaction#destroy', as: 'destroy_transaction'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
