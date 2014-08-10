class TodosController < ApplicationController 
  
  def new
  end

  def show
    @todo = Todo.find params[:id]
  end


  def create
    @todo = Todo.new(todo_params)
    
    if @todo.save
      redirect_to @todo, notice: 'Your new TODO was saved'
    else
      redirect_to new_todo_path, notice: 'Your new TODO was NOT saved.  Please add a Description.'
    end
end


  private

  def todo_params
    params.require(:todo).permit(:description)
  end

end

