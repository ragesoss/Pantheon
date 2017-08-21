Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'login' }
  get '/', to: 'application#index'
end
