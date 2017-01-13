class TodolistsController < ApplicationController
before_action :set_todolist, only: [:show, :edit, :update, :destroy]

# GET /todolist
# GET /todolist.json
def index
  @todolists = Todolist.all
end

# GET /todolist/1
# GET /todolist/1.json
def show
end

# GET /todolist/new
def new
  @todolists = Todolist.new
end

# GET /todolist/1/edit
def edit
end

# POST /todolist
# POST /todolist.json
def create
  @todolists = Todolist.new(todolist_params)

  respond_to do |format|
    if @todolists.save
      format.html { redirect_to @todolists, notice: 'New task was successfully created.' }
      format.json { render :show, status: :created, location: @todolists}
    else
      format.html { render :new }
      format.json { render json: @todolists.errors, status: :unprocessable_entity }
    end
  end
end
# PATCH/PUT /todolist/1
# PATCH/PUT /todolist/1.json
def update
  respond_to do |format|
    if @todolists.update(todolist_params)
      format.html { redirect_to @todolists, notice: 'Task was successfully updated.' }
      format.json { render :show, status: :ok, location: @todolists }
    else
      format.html { render :edit }
      format.json { render json: @todolists.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /todolist/1
# DELETE /todolist/1.json
def destroy
  @todolists.destroy
  respond_to do |format|
    format.html { redirect_to todolist_url, notice: 'Task was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_todolist
    @todolists = Todolist.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def todolist_params
    params.require(:todolist).permit(:who, :when, :what)
  end
end
