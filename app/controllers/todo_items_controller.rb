class TodoItemsController < ApplicationController
  def index
    @todos = TodoItem.all
    @todo = TodoItem.new
  end

  def new

  end

  def create
    @todo = TodoItem.new(todo_items_params)
    if @todo.save
      redirect_to :index, notice: 'Successfuly created'
    else
      redirect_to :back, alert: 'Error occured'
  end

  def show
  end

  def destroy
  end
end



private

  def todo_items_params
    params.require(:todo_item).permit(:message, :priority, :due_date)
  end

end
