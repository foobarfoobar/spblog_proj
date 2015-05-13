class NeueXTabelleYsController < ApplicationController
  before_action :set_neue_x_tabelle_y, only: [:show, :edit, :update, :destroy]

  # GET /neue_x_tabelle_ies
  # GET /neue_x_tabelle_ies.json
  def index
    @neue_x_tabelle_ies = NeueXTabelleY.all
  end

  # GET /neue_x_tabelle_ies/1
  # GET /neue_x_tabelle_ies/1.json
  def show
  end

  # GET /neue_x_tabelle_ies/new
  def new
    @neue_x_tabelle_y = NeueXTabelleY.new
  end

  # GET /neue_x_tabelle_ies/1/edit
  def edit
  end

  # POST /neue_x_tabelle_ies
  # POST /neue_x_tabelle_ies.json
  def create
    @neue_x_tabelle_y = NeueXTabelleY.new(neue_x_tabelle_y_params)

    respond_to do |format|
      if @neue_x_tabelle_y.save
        format.html { redirect_to @neue_x_tabelle_y, notice: 'Neue x tabelle y was successfully created.' }
        format.json { render :show, status: :created, location: @neue_x_tabelle_y }
      else
        format.html { render :new }
        format.json { render json: @neue_x_tabelle_y.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neue_x_tabelle_ies/1
  # PATCH/PUT /neue_x_tabelle_ies/1.json
  def update
    respond_to do |format|
      if @neue_x_tabelle_y.update(neue_x_tabelle_y_params)
        format.html { redirect_to @neue_x_tabelle_y, notice: 'Neue x tabelle y was successfully updated.' }
        format.json { render :show, status: :ok, location: @neue_x_tabelle_y }
      else
        format.html { render :edit }
        format.json { render json: @neue_x_tabelle_y.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neue_x_tabelle_ies/1
  # DELETE /neue_x_tabelle_ies/1.json
  def destroy
    @neue_x_tabelle_y.destroy
    respond_to do |format|
      format.html { redirect_to neue_x_tabelle_ies_url, notice: 'Neue x tabelle y was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neue_x_tabelle_y
      @neue_x_tabelle_y = NeueXTabelleY.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neue_x_tabelle_y_params
      params.require(:neue_x_tabelle_y).permit(:strangerName, :nochWas)
    end
end
