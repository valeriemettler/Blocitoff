class TodosController < ApplicationController 
  respond_to :html, :js
  before_action :authenticate_user!, only: [:index]
  
  def index
    @todos = current_user.todos
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    
    if @todo.save
      redirect_to todos_path, notice: 'Woot! A new TODO!'
    else
      redirect_to todos_path, error: 'Oops! Did you forget to type something in the box?'
    end
  end

    def destroy
    @todo = Todo.find(params[:id])
    
    if @todo.destroy
      flash[:notice] = "Yea! One less thing TODO!"
    else
      flash[:error] = "Oops! Try deleting again."
    end
    respond_with(@todo) do |format|
      format.html { redirect_to [@todo] }
    end
end


  private

  def todo_params
    params.require(:todo).permit(:description)
  end

end

