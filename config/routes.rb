Rails.application.routes.draw do
    get 'todos', to: 'todos#index'
    get 'todos/new' #ruta metodo new 
    post 'todos', to: 'todos#create' #ruta metodo create
    get 'todos/:id', to: 'todos#show', as: 'todo'
    get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
    patch 'todos/:id', to: 'todos#update'
    delete 'todos/:id', to: 'todos#destroy'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
