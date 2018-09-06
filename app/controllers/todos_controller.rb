class TodosController < ApplicationController
    def index
      @todos = Todo.all  #devuelve todos los elementos
    end

    def new
      @todo = Todo.new # @todo almacena nueva instancia de Todo  
    end

    def create
      @todo = Todo.new(todo_params)
      @todo.save
      redirect_to todos_path  
    end

    def show
       @todo = Todo.find(params[:id]) #busca un todo en base a params id, se asigna a @todo 
    end

    def edit
       @todo = Todo.find(params[:id]) 
    end

    def update
       @todo = Todo.find(params[:id])
       @todo.update(todo_params)
       redirect_to todos_path 
    end

    def destroy
       @todo = Todo.find(params[:id])
       @todo.destroy
       redirect_to todos_path 
    end

    def complete
       @todo = Todo.find(params[:id])
       @todo.completed = true
       @todo.save
       redirect_to todos_path 
    end

    def list
      @todos = Todo.all
      
    end


    private
    def todo_params
       params.require(:todo).permit(:description, :completed) 
    end


    
end
