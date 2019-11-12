Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read
  get 'tasks', to: 'tasks#index'
  # create
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # details
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  get 'tasks/:id/delete', to: 'tasks#destroy', as: 'delete'
  # mark as done
  post 'tasks/:id/mark', to: 'tasks#mark', as: 'mark'
end
