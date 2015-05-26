class MadlibsController < ApplicationController
  before_action :set_madlib, only: [:show, :edit, :update, :destroy]

  # GET /madlibs
  # GET /madlibs.json
  def index
    @madlibs = Madlib.all
  end

  # GET /madlibs/1
  # GET /madlibs/1.json
  def show
  end

  # GET /madlibs/new
  def new
    @madlib = Madlib.new
  end

  # GET /madlibs/1/edit
  def edit
  end

  # POST /madlibs
  # POST /madlibs.json
  def create
    @madlib = Madlib.new(madlib_params)

    respond_to do |format|
      if @madlib.save
        format.html { redirect_to @madlib, notice: 'Madlib was successfully created.' }
        format.json { render :show, status: :created, location: @madlib }
      else
        format.html { render :new }
        format.json { render json: @madlib.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /madlibs/1
  # PATCH/PUT /madlibs/1.json
  def update
    respond_to do |format|
      if @madlib.update(madlib_params)
        format.html { redirect_to @madlib, notice: 'Madlib was successfully updated.' }
        format.json { render :show, status: :ok, location: @madlib }
      else
        format.html { render :edit }
        format.json { render json: @madlib.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /madlibs/1
  # DELETE /madlibs/1.json
  def destroy
    @madlib.destroy
    respond_to do |format|
      format.html { redirect_to madlibs_url, notice: 'Madlib was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_madlib
      @madlib = Madlib.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def madlib_params
      params[:madlib]
    end
end
