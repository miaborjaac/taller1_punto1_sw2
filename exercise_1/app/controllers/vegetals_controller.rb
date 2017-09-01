class VegetalsController < ApplicationController
  before_action :set_vegetal, only: [:show, :edit, :update, :destroy]

  # GET /vegetals
  # GET /vegetals.json
  def index
    @vegetals = Vegetal.all
  end

  # GET /vegetals/1
  # GET /vegetals/1.json
  def show
  end

  # GET /vegetals/new
  def new
    @vegetal = Vegetal.new
  end

  # GET /vegetals/1/edit
  def edit
  end

  # POST /vegetals
  # POST /vegetals.json
  def create
    @vegetal = Vegetal.new(vegetal_params)

    respond_to do |format|
      if @vegetal.save
        format.html { redirect_to @vegetal, notice: 'Vegetal was successfully created.' }
        format.json { render :show, status: :created, location: @vegetal }
      else
        format.html { render :new }
        format.json { render json: @vegetal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vegetals/1
  # PATCH/PUT /vegetals/1.json
  def update
    respond_to do |format|
      if @vegetal.update(vegetal_params)
        format.html { redirect_to @vegetal, notice: 'Vegetal was successfully updated.' }
        format.json { render :show, status: :ok, location: @vegetal }
      else
        format.html { render :edit }
        format.json { render json: @vegetal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vegetals/1
  # DELETE /vegetals/1.json
  def destroy
    @vegetal.destroy
    respond_to do |format|
      format.html { redirect_to vegetals_url, notice: 'Vegetal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vegetal
      @vegetal = Vegetal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vegetal_params
      params.require(:vegetal).permit(:name, :color, :weight, :price)
    end
end
