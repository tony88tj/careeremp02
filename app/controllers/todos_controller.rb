class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  # GET /todos
  # GET /todos.json
  def index
     @todos = Todo.order(:status, :category, :created_date)
    #@todos = Todo.where(status: "open")

  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(todo_params)
      if @todo.save
         redirect_to todos_path
 
      else
         render :new 
        
      end
   
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
      if @todo.update(todo_params)
        redirect_to todos_path, notice: 'Todo was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def todo_params
      params.require(:todo).permit(:category, :subject, :desc, :priority, :name, :tel, :status)
    end
end
