Rails.application.routes.draw do
  get 'factors/index'

  get 'index' => 'statements#index'
  post 'score' => 'statements#score'
  get 'list' => 'statements#list'

  resources :statements
  resources :factors
end
