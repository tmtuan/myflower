Rails.application.routes.draw do
  get 'index' => 'statements#index'
  post 'score' => 'statements#score'
  get 'list' => 'statements#list'

  resources :statements
end
