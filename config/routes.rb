Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read/list all the tasks
  get '/tasks', to: 'tasks#index'
  # create one task
  get '/tasks/new', to: 'tasks#new' # display the form
  post '/tasks', to: 'tasks#create'
  # edit one task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # read one task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
