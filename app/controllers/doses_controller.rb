class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json

  # GET /restaurants/new
  def new
    @dose = Dose.new
  end

  # def show
  #   @cocktails = Cocktail.new
  # end

  # GET /restaurants/1/edit
  def create
    # @dose = Dose.new
    # respond_to do |format|
    #   if @dose.save
    #     format.html { redirect_to @dose, notice: 'dose was successfully created.' }
    #     format.json { render :show, status: :created, location: @dose }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @dose.errors, status: :unprocessable_entity }
    #   end
    # end


  end

  # POST /restaurants
  # POST /restaurants.json
  # def create
  #   @dose = Dose.new

  #   respond_to do |format|
  #     if @dose.save
  #       format.html { redirect_to @dose, notice: 'dose was successfully created.' }
  #       format.json { render :show, status: :created, location: @dose }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @dose.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # PATCH/PUT /restaurants/1
  # # PATCH/PUT /restaurants/1.json
  # def update
  #   respond_to do |format|
  #     if @dose.update(cocktail_params)
  #       format.html { redirect_to @dose, notice: 'dose was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @dose }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @dose.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /restaurants/1
  # # DELETE /restaurants/1.json
  # def destroy
  #   @dose.destroy
  #   respond_to do |format|
  #     format.html { redirect_to cocktails_url, notice: 'dose was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_restaurant
  #     @dose = dose.find(params[:id])
  #   end

  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def restaurant_params
  #     params.require(:dose).permit(:name, :address, :phone_number, :category)
  #   end
  # end


end
