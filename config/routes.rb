Rails.application.routes.draw do
  get 'factors/index'

  get 'index' => 'statements#index'
  post 'score' => 'statements#score'
  get 'list' => 'statements#list'

  root 'statements#index'
  resources :statements
  resources :factors

  #This is url for 'pages'
  get 'home' => 'pages#home'
  get 'step1_values' => 'pages#values'
  get 'step2_knowledge_expertise' => 'pages#knowledgeExpertise'
  get 'step3_transferableskills' => 'pages#transferableSkills'
  get 'step4_people' => 'pages#people'
  get 'step5_workingconditions' => 'pages#workingConditions'
  get 'step6_salary' => 'pages#salary'
  get 'step7_place' => 'pages#place'

end
