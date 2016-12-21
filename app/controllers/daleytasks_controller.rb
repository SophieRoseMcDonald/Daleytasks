class DaleytasksController < ApplicationController
  before_action :set_daleytask, only: [:show, :edit, :update, :destroy]

  # GET /daleytasks
  # GET /daleytasks.json
  def index
    @daleytasks = Daleytask.all
  end

  # GET /daleytasks/1
  # GET /daleytasks/1.json
  def show
  end

  # GET /daleytasks/new
  def new
    @daleytask = Daleytask.new
  end

  # GET /daleytasks/1/edit
  def edit
  end

  # POST /daleytasks
  # POST /daleytasks.json
  def create
    @daleytask = Daleytask.new(daleytask_params)

    respond_to do |format|
      if @daleytask.save
        format.html { redirect_to @daleytask, notice: 'Daleytask was successfully created.' }
        format.json { render :show, status: :created, location: @daleytask }
      else
        format.html { render :new }
        format.json { render json: @daleytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daleytasks/1
  # PATCH/PUT /daleytasks/1.json
  def update
    respond_to do |format|
      if @daleytask.update(daleytask_params)
        format.html { redirect_to @daleytask, notice: 'Daleytask was successfully updated.' }
        format.json { render :show, status: :ok, location: @daleytask }
      else
        format.html { render :edit }
        format.json { render json: @daleytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daleytasks/1
  # DELETE /daleytasks/1.json
  def destroy
    @daleytask.destroy
    respond_to do |format|
      format.html { redirect_to daleytasks_url, notice: 'Daleytask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daleytask
      @daleytask = Daleytask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daleytask_params
      params.require(:daleytask).permit(:who, :when, :what)
    end
end
