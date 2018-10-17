Rails.application.routes.draw do
  post 'authenticates/index'
  post 'authenticates/token'
  get 'authenticates/index', to:"authenticates#index"
  get 'autenticates/token', to:"autenticates#token"
  get 'authenticates/success', to:"authenticates#success"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
