Rails.application.routes.draw do
  get 'index' => 'behavior_statements#index'
  post 'score' => 'behavior_statements#score'
end
