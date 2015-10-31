Rails.application.routes.draw do
  get 'factors/index'

  get 'index' => 'statements#index'
  post 'score' => 'statements#score'
  get 'list' => 'statements#list'

  root 'statements#index'
  resources :statements
  resources :factors
end
