Rails.application.routes.draw do
  # retrieve all tasks
  get "tasks", to: "tasks#index"

  # create one record
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # retrieve one record
  get "tasks/:id", to: "tasks#show", as: :task

  # update one record
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  # delete one record
  delete "tasks/:id", to: "tasks#destroy"

  root to: "tasks#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :tasks
end
