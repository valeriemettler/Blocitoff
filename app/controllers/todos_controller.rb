class TodosController < ApplicationController 
  
  def index
  end
  

  def new
  end

  def show
    @todo = Todo.find params[:id]
  end


  def create
    @todo = Todo.new(todo_params)
    
    if @todo.save
      redirect_to @todo, notice: 'Woot! A new TODO!'
    else
      redirect_to new_todo_path, notice: 'Oops! Did you forget to type something in the box?'
    end
end


  private

  def todo_params
    params.require(:todo).permit(:description)
  end

end

