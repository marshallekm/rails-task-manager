Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new" , as: :new_task
  post "tasks", to: "tasks#create"
  get "tasks/:id", to: "tasks#show" , as: :show_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update", as: :update_task
  delete "tasks/:id", to: "tasks#delete", as: :delete_task
end
