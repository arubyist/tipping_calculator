class TippiesController < ApplicationController
  before_action :set_tippy, only: [:show, :edit, :update, :destroy]

  # GET /tippies
  # GET /tippies.json
  def index
    @tippies = Tippy.all
  end

  # GET /tippies/1
  # GET /tippies/1.json
  def show
    #@calculation_of_total_cost 
  end

  # GET /tippies/new
  def new
    @tippy = Tippy.new
  end

  # GET /tippies/1/edit
  def edit
  end

  # POST /tippies
  # POST /tippies.json
  def create
    @tippy = Tippy.new(tippy_params)

    respond_to do |format|
      if @tippy.save
        format.html { redirect_to @tippy, notice: 'Tippy was successfully created.' }
        format.json { render :show, status: :created, location: @tippy }
      else
        format.html { render :new }
        format.json { render json: @tippy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tippies/1
  # PATCH/PUT /tippies/1.json
  def update
    respond_to do |format|
      if @tippy.update(tippy_params)
        format.html { redirect_to @tippy, notice: 'Tippy was successfully updated.' }
        format.json { render :show, status: :ok, location: @tippy }
      else
        format.html { render :edit }
        format.json { render json: @tippy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tippies/1
  # DELETE /tippies/1.json
  def destroy
    @tippy.destroy
    respond_to do |format|
      format.html { redirect_to tippies_url, notice: 'Tippy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tippy
      @tippy = Tippy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tippy_params
      params.require(:tippy).permit(:tip, :cost)
    end
end
